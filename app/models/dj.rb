require 'SecureRandom'
class Dj < ActiveRecord::Base
  attr_accessible :code, :name

  has_one :request_queue, :class_name => 'Playlist', :foreign_key => 'request_queue_id', :dependent => :destroy
  has_one :played_list, :class_name => 'Playlist', :foreign_key => 'played_list_id', :dependent => :destroy

  def initialize(options={})
    request_queue = Playlist.create
    played_list = Playlist.create
    code = SecureRandom.hex(3)
    create_generated_playlist(options[:seed])
  end

  def play_queue
    request_queue.tracks + generated_queue.tracks
  end

  def next
    current_track = play_queue.first
    played_list.add_track(current_track)
    current_track
  end

  def create_generated_playlist(seed)
    EchoNestApi.create_dynamic_playlist(seed)
  end


end
