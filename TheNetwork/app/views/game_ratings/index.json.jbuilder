json.array!(@game_ratings) do |game_rating|
  json.extract! game_rating, :id, :game_id, :rating
  json.url game_rating_url(game_rating, format: :json)
end
