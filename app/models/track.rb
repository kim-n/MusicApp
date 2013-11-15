class Track < ActiveRecord::Base
  attr_accessible :album_id, :lyrics, :track_name
end
