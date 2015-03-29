class Place < ActiveRecord::Base
  has_many :bookings
  has_many :distances

  def place_name
    name
  end
end
