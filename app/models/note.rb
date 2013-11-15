class Note < ActiveRecord::Base
  attr_accessible :user_id, :track_id, :contents

  validates :user_id, :track_id, :contents, :presence => true

  belongs_to(
    :author,
    :class_name => "User",
    :foreign_key => :user_id,
    :primary_key => :id
  )

  belongs_to(
    :track,
    :class_name => "Track",
    :foreign_key => :track_id,
    :primary_key => :id
  )
end

