json.array!(@games) do |game|
  json.extract! game, :id, :engine_id, :name, :image, :description, :license_id
  json.url game_url(game, format: :json)
end
