class Vehicle < ActiveRecord::Base
  belongs_to :vehicle_type

  def vehicle_name
    name
  end
end
