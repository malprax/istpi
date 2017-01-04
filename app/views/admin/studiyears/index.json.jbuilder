json.array!(@studiyears) do |studiyear|
  json.extract! studiyear, :id, :name
  json.url studiyear_url(studiyear, format: :json)
end
