class VehicleModel < ActiveRecord::Base
  belongs_to :vehicle_brand
  belongs_to :parking_spot_size
end
