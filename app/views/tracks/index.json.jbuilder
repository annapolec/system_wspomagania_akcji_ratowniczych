json.array!(@tracks) do |track|
  json.extract! track, :id, :difficulty_level
  json.url track_url(track, format: :json)
end
