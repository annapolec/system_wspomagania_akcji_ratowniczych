json.array!(@danger_zones) do |danger_zone|
  json.extract! danger_zone, :id, :x, :y
  json.url danger_zone_url(danger_zone, format: :json)
end
