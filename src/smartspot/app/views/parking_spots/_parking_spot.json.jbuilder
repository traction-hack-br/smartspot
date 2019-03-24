json.extract! parking_spot, :id, :code, :parking_spot_size_id, :parking_spot_status_id, :is_private, :is_for_disability, :created_at, :updated_at
json.url parking_spot_url(parking_spot, format: :json)
