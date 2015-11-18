json.array!(@tourists) do |tourist|
  json.extract! tourist, :id, :x, :y, :status
  json.url tourist_url(tourist, format: :json)
end
