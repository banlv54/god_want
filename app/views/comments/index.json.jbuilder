json.array!(@comments) do |comment|
  json.extract! comment, :id, :advertise_id, :user_id, :comment
  json.url comment_url(comment, format: :json)
end
