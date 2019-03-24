class ParkingSpot < ActiveRecord::Base
  belongs_to :parking_lot
  belongs_to :parking_spot_size
  belongs_to :parking_spot_status
end
