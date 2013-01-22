class Track < ActiveRecord::Base
  attr_accessible :artist, :title, :uri, :position
end
