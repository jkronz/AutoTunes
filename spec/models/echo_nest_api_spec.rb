require 'spec_helper'

describe EchoNestApi do

  describe 'playlist creation' do
    it "should build the correct URL" do
      url = EchoNestApi.build_url("playlist/dynamic", {artist: 'weezer', type: 'artist-radio'})
      url.should == "http://developer.echonest.com/api/v4/playlist/dynamic?api_key=#{$echo_nest['api_key']}&format=json&artist=weezer&type=artist-radio"
    end
  end

  describe 'parsing_results' do
    let :success_hash do
      {
        "response" => {
        "session_id" => "b031d33e246b42998c8f0346e07a036e",
        "songs" => [{
          "artist_id" => "ARBKU7G1187FB5261B",
          "artist_name" => "The Rocket Summer",
          "id" => "SOLTFBT12A8C134743",
          "title" => "Colors"
        }],
        "status" => {
          "code" => 0,
          "message" => "Success",
          "version" => "4.2"}
        }
      }
    end

    let :success_response do
      @success = mock(Typhoeus::Response)
      @success.stub(:body).and_return(success_hash.to_json())
      @success
    end

    let :error_response do
      resp = mock(Typhoeus::Response)
      resp.stub!(:body).and_return({
        "response" => {
          "status" => {
            "version"=> "4.2",
            "code"=> 3,
            "message"=> "api_key - You are limited to 120 accesses every minute. You might be eligible for a rate limit increase, go to http://developer.echonest.com/account/upgrade"}
        }
      }.to_json())
      resp
    end

    let :empty_response do
      resp = mock(Typhoeus::Response)
      resp.stub!(:body).and_return({})
      resp
    end

    it "should return results hash for a successful request" do
      success = {
        "session_id" => "b031d33e246b42998c8f0346e07a036e",
        "songs" => [{
          "artist_id" => "ARBKU7G1187FB5261B",
          "artist_name" => "The Rocket Summer",
          "id" => "SOLTFBT12A8C134743",
          "title" => "Colors"
        }],
        "status" => {
          "code" => 0,
          "message" => "Success",
          "version" => "4.2"}
      }
      results = EchoNestApi.parse_response(success_response)
      results.should == success
    end

    it "should return the error message for an API error" do
      error = {
        'error' => "api_key - You are limited to 120 accesses every minute. You might be eligible for a rate limit increase, go to http://developer.echonest.com/account/upgrade"
      }
      results = EchoNestApi.parse_response(error_response)
      results.should == error
    end

    it "should return generic error for a failed parse" do
      error = {
        'error' => "There was a problem accessing the Echo Nest API."
      }
      results = EchoNestApi.parse_response(empty_response)
      results.should == error
    end
  end
end

