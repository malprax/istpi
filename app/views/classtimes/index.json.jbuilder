json.array!(@classtimes) do |classtime|
  json.extract! classtime, :id, :time
  json.url classtime_url(classtime, format: :json)
end
