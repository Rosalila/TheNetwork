json.array!(@components) do |component|
  json.extract! component, :id, :name, :image, :description, :license_id
  json.url component_url(component, format: :json)
end
