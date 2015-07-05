json.array!(@game_comments) do |game_comment|
  json.extract! game_comment, :id, :game_id, :user_id, :comment
  json.url game_comment_url(game_comment, format: :json)
end
