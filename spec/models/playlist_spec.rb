require 'spec_helper'

describe Playlist do
  let :playlist do
    Playlist.create
  end
  describe 'methods' do
    it "should respond to tracks" do
      playlist.respond_to?(:tracks).should be_true
    end

    it "should respond to add_track" do
      playlist.respond_to?(:add_track).should be_true
    end
  end

  describe 'adding tracks' do
    let :track do
      Track.new({artist: 'A$AP Rocky', title: 'Hell', uri: 'some_uri'})
    end

    it "should set the correct playlist_id" do
      track1 = playlist.add_track(track)
      track1.playlist_id.should == playlist.id
    end

    it "should set the correct position" do
      track2 = playlist.add_track(track)
      track2.position.should == playlist.tracks.reload.length - 1
    end
  end

  describe 'creating tracks' do
    it "should set the correct playlist_id" do
      track3 = playlist.create_track("Crystal Castles", "Plague", "3lfQVVHkh8vFPi7LraIlMR")
      track3.playlist_id.should == playlist.id
    end

    it "should set the correct position" do
      track3 = playlist.create_track("Crystal Castles", "Plague", "3lfQVVHkh8vFPi7LraIlMR")
      track3.position.should == playlist.tracks.length - 1
    end
  end
end
