json.array!(@assets_ratings) do |assets_rating|
  json.extract! assets_rating, :id, :asset_id, :rating
  json.url assets_rating_url(assets_rating, format: :json)
end
