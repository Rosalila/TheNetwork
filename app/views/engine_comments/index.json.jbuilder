json.array!(@engine_comments) do |engine_comment|
  json.extract! engine_comment, :id, :engine_id, :user_id, :comment
  json.url engine_comment_url(engine_comment, format: :json)
end
