class Advertise < ActiveRecord::Base
	has_many :likes, foreign_key: :target_id, class_name: Like::LikeAdvertise.name
	has_many :comments, foreign_key: :advertise_id, class_name: Comment::CommentAdvertise.name
end
