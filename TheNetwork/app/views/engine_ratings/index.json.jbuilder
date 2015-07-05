json.array!(@engine_ratings) do |engine_rating|
  json.extract! engine_rating, :id, :engine_id, :rating
  json.url engine_rating_url(engine_rating, format: :json)
end
