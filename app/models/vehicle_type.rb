class VehicleType < ActiveRecord::Base
  has_many :vehicles

  def type
    name
  end
end
