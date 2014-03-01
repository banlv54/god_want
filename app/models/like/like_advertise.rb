class Like::LikeAdvertise < Like
	belongs_to :advertise, foreign_key: :target_id
end