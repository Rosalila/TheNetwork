json.array!(@credits) do |credit|
  json.extract! credit, :id, :user_id, :asset_id
  json.url credit_url(credit, format: :json)
end
