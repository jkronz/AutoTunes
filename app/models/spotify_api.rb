require 'typhoeus'
require 'uri'
class SpotifyApi
  class << self
    def find_track(query)
      url = build_url(query)
      parse_track(Typhoeus.get(url))
    end

    def echo_nest_to_spotify(echo_nest_result)
      echo_nest_song = echo_nest_result['songs'].first
      spotify_query = "#{echo_nest_song['artist_name']} #{echo_nest_song['title']}"
      find_track(spotify_query)
    end

    def build_url(query)
      URI.escape "#{base_url}#{build_query({q: query})}"
    end

    def build_query(params)
      query_string = ""

      params.each do |key, value|
        if query_string.length <= 0
          query_string += "?#{key}=#{value}"
        else
          query_string += "&#{key}=#{value}"
        end
      end

      query_string
    end

    def parse_track(response)
      result = {}
      #begin
        resp = JSON.parse(response.body)
        tracks = resp['tracks']
        return nil if tracks.length == 0
        track = tracks.first
        artists_array = track['artists'].collect { |art| art['name'] }
        result[:artist] = artists_array.join(', ')
        result[:length] = track['length'] * 1000
        result[:uri] = track['href']
        result[:name] = track['name']
      #rescue
      #  result = self.handle_api_error("There was a problem accessing the Spotify API.")
      #end
      result
    end

    def handle_api_error(message)
      {"error" => message}
    end

    def base_url
      "http://ws.spotify.com/search/1/track.json"
    end
  end
end