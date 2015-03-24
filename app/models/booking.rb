class Booking < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :from_place, class_name: "Place"
  belongs_to :to_place, class_name: "Place"
  validates :from_date, :uniqueness => {:scope => :vehicle_id, :message => " The Vehicle is not available today , come tomorrow" }
end
