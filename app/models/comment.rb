class Comment < ActiveRecord::Base
  include Notices::Noticeable

  belongs_to :advertise
  has_many :likes, foreign_key: :target_id, class_name: Like::LikeComment.name

  validates :advertise, presence: true
end
