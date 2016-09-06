json.array!(@clocks) do |clock|
  json.extract! clock, :id, :name
  json.url clock_url(clock, format: :json)
end
