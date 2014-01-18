json.array!(@notice_recipients) do |notice_recipient|
  json.extract! notice_recipient, :id, :notice_id, :receiver_user_id
  json.url notice_recipient_url(notice_recipient, format: :json)
end
