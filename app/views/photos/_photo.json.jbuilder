json.extract! photo, :id, :caption, :image_one, :owner_id, :location, :image_two, :image_three, :created_at, :updated_at
json.url photo_url(photo, format: :json)
