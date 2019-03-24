class EntranceController < ApplicationController
  def index
    @parking_lots = ParkingLot.all
  end

  # We should receive the parking lot, guest, vehicle and if the guest is eligible for a spot for the disabled
  def register
    @parking_lot = ParkingLot.find(params['parking_lot'])
    @guest = Guest.find(params['guest'])
    @vehicle = Vehicle.find(vehicle = params['vehicle'])
    is_disabled = params['is_disabled']

    # Try to find a free spot
    @spot = ParkingSpot.where(["parking_spot_status_id in (select id from parking_spot_status where is_available = true)
        and parking_lot_id = ?
        and parking_spot_size_id = ?
        and is_private = false
        and is_occupied = false
        and is_for_disability = ?",
        @parking_lot.id,
        @vehicle.parking_spot_size_id,
        is_disabled])
      .first

    # If is disabled and there's no free spot, try to find a non disabled free spot
    if is_disabled and @spot.nil?
      @spot = ParkingSpot.where(["parking_spot_status_id in (select id from parking_spot_status where is_available = true)
        and parking_lot_id = ?
        and parking_spot_size_id = ?
        and is_private = false
        and is_occupied = false
        and is_for_disability = false",
        @parking_lot.id,
        @vehicle.parking_spot_size_id])
        .first
    end

    # If we found a free spot, register the entrance
    if not @spot.nil?
      @spot.is_occupied = true
      @spot.update

      @entrance = Time.new
      GuestHistory.create({ guest: @guest, vehicle: @vehicle, parking_spot: @spot, entrance_date: @entrance})
    end
  end
end
