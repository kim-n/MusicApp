class Track < ActiveRecord::Base
  attr_accessible :album_id, :lyrics, :track_name, :track_type

  validates :album_id, :track_name, :track_type, :presence => true
  validates :track_type, :inclusion => { :in => %w( bonus regular ) }

  belongs_to(
    :album,
    class_name: "Album",
    foreign_key: :album_id,
    primary_key: :id
  )

  has_many(
    :notes,
    :class_name => "Note",
    :foreign_key => :track_id,
    :primary_key => :id
  )
end
