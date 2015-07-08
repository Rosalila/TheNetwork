json.array!(@incentives) do |incentive|
  json.extract! incentive, :id, :asset_id, :user_id, :amount
  json.url incentive_url(incentive, format: :json)
end
