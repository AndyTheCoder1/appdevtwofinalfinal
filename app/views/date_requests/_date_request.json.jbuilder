json.extract! date_request, :id, :sender_id, :recipient_id, :acceptance, :weekly_rose, :created_at, :updated_at
json.url date_request_url(date_request, format: :json)
