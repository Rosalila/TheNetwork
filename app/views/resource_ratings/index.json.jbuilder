json.array!(@resource_ratings) do |resource_rating|
  json.extract! resource_rating, :id, :resource_id, :rating
  json.url resource_rating_url(resource_rating, format: :json)
end
