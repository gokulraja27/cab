class Booking < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :from_place, class_name: "Place"
  belongs_to :to_place, class_name: "Place"
  belongs_to :distance
  validates :from_date, :uniqueness => {:scope => :vehicle_id, :message => " The Vehicle is not available today , come tomorrow" }

  before_create :set_distance_id

  def set_distance_id
    distance = Distance.where("start_place_id = #{from_place_id} OR start_place_id = #{to_place_id}").where("end_place_id = #{from_place_id} OR end_place_id = #{to_place_id}").first
    self.distance_id = distance.id
  end


end
