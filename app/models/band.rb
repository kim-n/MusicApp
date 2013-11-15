class Band < ActiveRecord::Base
  attr_accessible :band_name

  validates :band_name, :presence => true

  has_many(
    :albums,
    class_name: "Album",
    foreign_key: :band_id,
    primary_key: :id,
    dependent: :destroy
  )
end
