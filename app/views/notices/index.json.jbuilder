json.array!(@notices) do |notice|
  json.extract! notice, :id, :target_id, :send_user_id, :type
  json.url notice_url(notice, format: :json)
end
