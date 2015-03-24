class Place < ActiveRecord::Base
  has_many :bookings

  def place_name
    name
  end
end
