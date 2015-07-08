json.array!(@component_ratings) do |component_rating|
  json.extract! component_rating, :id, :component_id, :rating
  json.url component_rating_url(component_rating, format: :json)
end
