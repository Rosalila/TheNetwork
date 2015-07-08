json.array!(@asset_comments) do |asset_comment|
  json.extract! asset_comment, :id, :asset_id, :user_id, :comment
  json.url asset_comment_url(asset_comment, format: :json)
end
