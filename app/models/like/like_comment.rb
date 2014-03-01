class Like::LikeComment < Like

  belongs_to :comment, foreign_key: :target_id
  alias_method :target, :comment
end
