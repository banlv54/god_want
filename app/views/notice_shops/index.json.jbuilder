json.array!(@notice_shops) do |notice_shop|
  json.extract! notice_shop, :id, :shop_id, :send_user_id, :type
  json.url notice_shop_url(notice_shop, format: :json)
end
