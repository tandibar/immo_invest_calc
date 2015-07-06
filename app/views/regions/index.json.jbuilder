json.array!(@regions) do |region|
  json.extract! region, :id, :user_id, :name, :qm_min, :qm_max, :multiplier_min, :multiplier_max, :multiplier_avg
  json.url region_url(region, format: :json)
end
