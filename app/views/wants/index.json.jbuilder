json.array!(@wants) do |want|
  json.extract! want, :id, :tags, :user_id, :description, :image, :address, :latitude, :longitude
  json.url want_url(want, format: :json)
end
