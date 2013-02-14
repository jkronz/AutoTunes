class Dj < ActiveRecord::Base
  before_create :generate_id
  before_create :create_playlists

  validates_presence_of :seed, :on => :create

  attr_accessible :seed, :request_queue_id, :played_list_id
  attr_accessor :seed, :seed_track

  belongs_to :request_queue, :class_name => 'Playlist', :foreign_key => 'request_queue_id', :dependent => :destroy
  belongs_to :played_list, :class_name => 'Playlist', :foreign_key => 'played_list_id', :dependent => :destroy
  belongs_to :current_track, :class_name => 'Track', :foreign_key => 'current_track_id', :dependent => :destroy

  def next
    WebsocketRails["DJ:#{self.id}"].trigger(:current_track, self.current_track)
    played_list.add_track(self.current_track)
    self.current_track = self.next_track
    WebsocketRails["DJ:#{self.id}"].trigger(:next_track, self.current_track)
    self.save
    self.current_track
  end

  def next_track
    if request_queue.tracks.length > 0
      request_queue.tracks.first
    else
      next_generated_track
    end
  end

  def create_generated_playlist
    echo_nest_result = EchoNestApi.create_dynamic_playlist(self.seed)
    self.current_track = Track.create(echo_nest_result['song'])
    self.session_id = echo_nest_result['session_id']
  end

  def next_generated_track
    echo_nest_result = EchoNestApi.next_track(self.session_id)
    self.played_list.add_track(self.current_track)
    self.current_track = Track.create(echo_nest_result['song'])
    self.save
    self.current_track
  end

  def request_track(track)
    self.request_queue.add_track(Track.new(track))
  end

  def create_playlists
    self.request_queue = Playlist.create
    self.played_list = Playlist.create
    create_generated_playlist
  end

  def generate_id
    self.id = SecureRandom.hex(3)
  end

  def as_json(options={})
    super(options.merge(:include => [:current_track]))
  end
end
