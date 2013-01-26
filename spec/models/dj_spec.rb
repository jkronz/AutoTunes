require 'spec_helper'

describe Dj do
  let :dj do
    @dj ||= Dj.create({seed: "Crystal Castles"})
  end

  describe 'play queue' do
    it "should next a track" do
      dj.respond_to?(:next).should be_true
    end
  end


end
