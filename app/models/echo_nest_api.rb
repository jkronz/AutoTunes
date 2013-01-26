require 'typhoeus'
require 'uri'
class EchoNestApi

  class << self
    def create_dynamic_playlist(artist)
      url = self.build_url("playlist/dynamic", {artist: artist,
                                                type: 'artist-radio',
                                                bucket: ["id:spotify-WW", "tracks", "audio_summary"]})
      parse_response(Typhoeus.get(url))
    end

    def next_track(session_id)
      url = self.build_url("playlist/dynamic", {session_id: session_id})
      parse_response(Typhoeus.get(url))
    end

    def build_url(action, params)
      URI.escape "#{self.echonest_url}/#{action}#{define_query(params)}"
    end

    def define_query(params)
      query_string = "?api_key=#{$echo_nest['api_key']}&format=json"
      params.each do |key, value|
        if value.is_a?(Array)
          value.each do |v|
            query_string += "&#{key}=#{v}"
          end
        else
          query_string += "&#{key}=#{value}"
        end
      end
      query_string
    end

    def parse_response(response)
      #begin
        resp = JSON.parse(response.body)['response']
        if resp['status']['code'] == 0
          result = resp
          result['song'] = {}
          song = resp['songs'].first
          result['song']['artist'] = song['artist_name']
          result['song']['name'] = song['title']
          track = song['tracks'].first
          result['song']['uri'] = track['foreign_id'].gsub("spotify-WW:", "spotify:")
          result['song']['length'] = song['audio_summary']['duration'] * 1000
        else
          Rails.logger.debug("Error Response Code")
          Rails.logger.debug(resp)
          result = self.handle_api_error(resp['status']['message'])
        end
      #rescue
      #  Rails.logger.debug("Error Response Code")
      #  result = self.handle_api_error("There was a problem accessing the Echo Nest API.")
      #end
      result
    end

    def handle_api_error(message)
      {"error" => message}
    end

    def echonest_url
      "http://developer.echonest.com/api/v4"
    end
  end


end