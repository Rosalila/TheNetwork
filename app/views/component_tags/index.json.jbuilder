json.array!(@component_tags) do |component_tag|
  json.extract! component_tag, :id, :component_id, :tag_id
  json.url component_tag_url(component_tag, format: :json)
end
