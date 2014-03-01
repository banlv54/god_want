class Want < ActiveRecord::Base
	has_many :likes, foreign_key: :target_id, class_name: Like::LikeWant.name
end
