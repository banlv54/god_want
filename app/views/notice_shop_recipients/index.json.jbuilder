json.array!(@notice_shop_recipients) do |notice_shop_recipient|
  json.extract! notice_shop_recipient, :id, :notice_shop_id, :receiver_user_id, :type
  json.url notice_shop_recipient_url(notice_shop_recipient, format: :json)
end
