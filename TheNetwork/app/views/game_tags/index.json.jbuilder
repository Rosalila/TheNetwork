json.array!(@game_tags) do |game_tag|
  json.extract! game_tag, :id, :game_id, :tag_id
  json.url game_tag_url(game_tag, format: :json)
end
