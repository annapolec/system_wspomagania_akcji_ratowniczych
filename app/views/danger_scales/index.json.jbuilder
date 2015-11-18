json.array!(@danger_scales) do |danger_scale|
  json.extract! danger_scale, :id, :value
  json.url danger_scale_url(danger_scale, format: :json)
end
