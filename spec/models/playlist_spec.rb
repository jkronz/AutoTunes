require 'spec_helper'

describe Playlist do
  before :each do
    @playlist = Playlist.new
  end

  describe "methods" do
    it "should have a list of tracks" do
      @playlist.respond_to?(:tracks).should be_true
    end

    describe "adding tracks" do
      it "should initialize position correctly" do
        @playlist.save
        track = @playlist.add_track("Gorillaz", "Clint Eastwood", "someuri")
        track.position.should == 0
      end

      it "should sort tracks by position" do
        @playlist.save
        track1 = @playlist.add_track("Gorillaz", "Clint Eastwood", "someuri")
        track2 = @playlist.add_track("Yeah Yeah Yeahs", "Honeybear", "someuri2")
        track3 = @playlist.add_track("Santigold", "Say Aha", "someuri3")
        @playlist.tracks.last.should == track3
      end

      it "should reorder tracks appropriately" do
        @playlist.save
        track1 = @playlist.add_track("Gorillaz", "Clint Eastwood", "someuri")
        track2 = @playlist.add_track("Yeah Yeah Yeahs", "Honeybear", "someuri2")
        track3 = @playlist.add_track("Santigold", "Say Aha", "someuri3")
        @playlist.reorder_tracks(['someuri3', 'someuri', 'someuri2'])
        @playlist.tracks.reload.last.uri.should == 'someuri2'
      end
    end
  end


end
