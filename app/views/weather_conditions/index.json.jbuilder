json.array!(@weather_conditions) do |weather_condition|
  json.extract! weather_condition, :id, :float
  json.url weather_condition_url(weather_condition, format: :json)
end
