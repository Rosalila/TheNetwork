json.array!(@engine_tags) do |engine_tag|
  json.extract! engine_tag, :id, :engine_id, :tag_id
  json.url engine_tag_url(engine_tag, format: :json)
end
