json.array!(@assets) do |asset|
  json.extract! asset, :id, :component_id, :category_id, :download, :license_id
  json.url asset_url(asset, format: :json)
end
