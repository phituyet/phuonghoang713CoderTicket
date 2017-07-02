json.extract! venue, :id, :name, :full_address, :region_id, :created_at, :updated_at
json.url venue_url(venue, format: :json)