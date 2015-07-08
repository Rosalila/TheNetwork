json.array!(@resource_comments) do |resource_comment|
  json.extract! resource_comment, :id, :resource_id, :user_id, :comment
  json.url resource_comment_url(resource_comment, format: :json)
end
