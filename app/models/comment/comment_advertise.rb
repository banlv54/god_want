class Comment::CommentAdvertise < Comment
	belongs_to :advertise, foreign_key: :advertise_id
end