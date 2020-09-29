json.extract! event, :id, :user_id, :title, :description, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
