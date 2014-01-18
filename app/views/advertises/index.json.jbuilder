json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :want_id, :product_id, :comment, :user_id
  json.url advertise_url(advertise, format: :json)
end
