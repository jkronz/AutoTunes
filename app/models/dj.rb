require 'SecureRandom'
class Dj < ActiveRecord::Base
  before_create :generate_id
  before_create :create_playlists

  validates_presence_of :seed, :on => :create

  attr_accessible :seed
  attr_accessor :seed

  has_one :request_queue, :class_name => 'Playlist', :foreign_key => 'request_queue_id', :dependent => :destroy
  has_one :played_list, :class_name => 'Playlist', :foreign_key => 'played_list_id', :dependent => :destroy

  def play_queue
    request_queue.tracks + generated_queue.tracks
  end

  def next
    current_track = play_queue.first
    played_list.add_track(current_track)
    current_track
  end

  def create_generated_playlist
    EchoNestApi.create_dynamic_playlist(self.seed)
  end

  def create_playlists
    request_queue = Playlist.create
    played_list = Playlist.create
    create_generated_playlist
  end

  def generate_id
    id = SecureRandom.hex(3)
  end

end
