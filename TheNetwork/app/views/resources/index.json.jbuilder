json.array!(@resources) do |resource|
  json.extract! resource, :id, :name, :image, :component_id, :category_id, :download, :license_id, :video
  json.url resource_url(resource, format: :json)
end
