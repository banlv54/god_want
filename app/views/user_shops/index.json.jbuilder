json.array!(@user_shops) do |user_shop|
  json.extract! user_shop, :id, :user_id, :shop_id, :role
  json.url user_shop_url(user_shop, format: :json)
end
