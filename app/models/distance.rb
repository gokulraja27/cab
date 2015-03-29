class Distance < ActiveRecord::Base
  belongs_to :start_place, class_name: "Place"
  belongs_to :end_place, class_name: "Place"
  has_many :bookings

  def place_names
    place.name
  end

  def place_namee
    place.name
  end
end
