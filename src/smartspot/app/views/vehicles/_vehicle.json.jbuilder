json.extract! vehicle, :id, :vehicle_model_id, :licence_plate, :color, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
