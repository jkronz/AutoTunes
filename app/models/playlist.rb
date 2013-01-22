class Playlist < ActiveRecord::Base
  has_many :tracks, :dependent => :destroy, :order => 'position ASC'

  def add_track(track)
    track.playlist_id = self.id
    track.position = tracks.length
    track.save
    track
  end

  def create_track(artist, title, uri)
    tracks.create(artist: artist, title: title, uri: uri, position: tracks.length)
  end
end
