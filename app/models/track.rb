class Track < ActiveRecord::Base
  attr_accessible :artist, :name, :uri, :position, :length

  class << self
    def search_spotify(query, how_many=5)
      tracks = SpotifyApi.find_tracks(query, how_many)
      tracks.map do |track_attributes|
        Track.new(track_attributes)
      end
    end
  end
end
