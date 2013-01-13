class Playlist < ActiveRecord::Base
  has_many :tracks, :order => 'position ASC'

  def add_track(title, artist, uri)
    tracks.create({title: title, artist: artist, uri: uri, position: tracks.size})
  end

  def reorder_tracks(uris)
    tracks_cache = {}.tap do |tc|
      tracks.select([:id, :uri, :position]).each { |t| tc[t[:uri]] = t }
    end

    Playlist.transaction do
      index = 0
      uris.each do |track_uri|
        next unless track = tracks_cache[track_uri]
        track.update_attribute(:position, index)
        index += 1
        tracks_cache.delete(track_uri)
      end

      # For any remaining videos, assign them at the end of the list.
      tracks_cache.each do |uri, track|
        track.update_attribute(:position, index)
        index += 1
      end
    end
  end
end
