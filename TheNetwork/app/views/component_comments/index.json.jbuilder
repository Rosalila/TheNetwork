json.array!(@component_comments) do |component_comment|
  json.extract! component_comment, :id, :compenent_id, :user_id, :comment
  json.url component_comment_url(component_comment, format: :json)
end
