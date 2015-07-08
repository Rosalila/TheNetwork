json.array!(@component_in_games) do |component_in_game|
  json.extract! component_in_game, :id, :component_id, :game_id
  json.url component_in_game_url(component_in_game, format: :json)
end
