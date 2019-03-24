class GuestHistory < ActiveRecord::Base
  belongs_to :guest
  belongs_to :vehicle
  belongs_to :parking_spot
end
