json.array!(@resource_tags) do |resource_tag|
  json.extract! resource_tag, :id, :resource_id, :tag_id
  json.url resource_tag_url(resource_tag, format: :json)
end
