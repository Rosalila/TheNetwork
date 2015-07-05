json.array!(@asset_tags) do |asset_tag|
  json.extract! asset_tag, :id, :asset_id, :tag_id
  json.url asset_tag_url(asset_tag, format: :json)
end
