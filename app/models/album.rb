class Album < ActiveRecord::Base
  attr_accessible :album_name, :band_id, :version
end
