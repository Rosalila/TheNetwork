json.array!(@asset_ratings) do |asset_rating|
  json.extract! asset_rating, :id, :asset_id, :rating
  json.url asset_rating_url(asset_rating, format: :json)
end
