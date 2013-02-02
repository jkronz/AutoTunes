require 'typhoeus'
require 'uri'
class SpotifyApi
  class << self
    def find_tracks(query, how_many=5)
      url = build_url(query)
      parse_tracks(Typhoeus.get(url), how_many)
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

    def parse_tracks(response, how_many)
      results = []
      begin
        resp = JSON.parse(response.body)
        tracks = resp['tracks']
        return nil if tracks.length == 0
        cnt = [tracks.length, how_many].min - 1
        tracks = tracks[0..cnt]
        results = tracks.map do |track_item|
          result = {}
          artists_array = track_item['artists'].collect { |art| art['name'] }
          result[:artist] = artists_array.join(', ')
          result[:length] = track_item['length'] * 1000
          result[:uri] = track_item['href']
          result[:name] = track_item['name']
          result
        end
      rescue
        results = [] #we hit some exception. close the blinds & pretend there were no results.
      end
      results
    end

    def handle_api_error(message)
      {"error" => message}
    end

    def base_url
      "http://ws.spotify.com/search/1/track.json"
    end
  end
end