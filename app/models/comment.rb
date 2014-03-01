class Comment < ActiveRecord::Base
	has_many :likes, foreign_key: :target_id, class_name: Like::LikeComment.name
end
