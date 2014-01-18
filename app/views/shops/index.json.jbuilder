json.array!(@shops) do |shop|
  json.extract! shop, :id, :owner_id, :name, :address1, :address2, :city, :country, :zipcode, :tel, :banner, :tags
  json.url shop_url(shop, format: :json)
end
