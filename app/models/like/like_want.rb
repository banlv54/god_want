class Like::LikeWant < Like

  belongs_to :want, foreign_key: :target_id
  alias_method :target, :want
end
