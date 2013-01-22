require 'SecureRandom'
class Dj < ActiveRecord::Base
  before_create :generate_id
  before_create :create_playlists

  validates_presence_of :seed, :on => :create

  attr_accessible :seed, :request_queue_id, :played_list_id
  attr_accessor :seed

  belongs_to :request_queue, :class_name => 'Playlist', :foreign_key => 'request_queue_id', :dependent => :destroy
  belongs_to :played_list, :class_name => 'Playlist', :foreign_key => 'played_list_id', :dependent => :destroy

  def play_queue
    request_queue.tracks + generated_queue.tracks
  end

  def next
    current_track = play_queue.first
    played_list.add_track(current_track)
    current_track
  end

  def create_generated_playlist
    echo_nest_result = EchoNestApi.create_dynamic_playlist(self.seed)
    session_id = echo_nest_result['session_id']
  end

  def next_generated_track

  end

  def create_playlists
    self.request_queue = Playlist.create
    self.played_list = Playlist.create
    create_generated_playlist
  end

  def generate_id
    self.id = SecureRandom.hex(3)
  end

end
