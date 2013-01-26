class Track < ActiveRecord::Base
  attr_accessible :artist, :name, :uri, :position, :length

end
