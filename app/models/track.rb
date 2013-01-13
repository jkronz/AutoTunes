class Track < ActiveRecord::Base
  belongs_to :playlist
  attr_accessible :artist, :title, :position, :uri

  def play
    update_attributes({played: true})
  end

end
