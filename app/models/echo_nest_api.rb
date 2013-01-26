require 'typhoeus'
require 'uri'
class EchoNestApi

  class << self
    def create_dynamic_playlist(artist)
      url = self.build_url("playlist/dynamic", {artist: artist, type: 'artist-radio'})
      parse_response(Typhoeus.get(url))
    end

    def next_track(session_id)
      url = self.build_url("playlist/dynamic/next", {session_id: session_id})
      parse_response(Typhoeus.get(url))
    end

    def build_url(action, params)
      URI.escape "#{self.echonest_url}/#{action}#{define_query(params)}"
    end

    def define_query(params)
      query_string = "?api_key=#{$echo_nest['api_key']}&format=json"
      params.each do |key, value|
        query_string += "&#{key}=#{value}"
      end
      query_string
    end

    def parse_response(response)
      begin
        resp = JSON.parse(response.body)['response']

        if resp['status']['code'] == 0
          result = resp
        else
          result = self.handle_api_error(resp['status']['message'])
        end
      rescue
        result = self.handle_api_error("There was a problem accessing the Echo Nest API.")
      end
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