json.array!(@sprockets) do |sprocket|
  json.extract! sprocket, :id, :user_id, :title, :description
  json.url sprocket_url(sprocket, format: :json)
end
