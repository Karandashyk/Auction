json.extract! location, :id, :name, :city, :room_amount, :created_at, :updated_at
json.url location_url(location, format: :json)
