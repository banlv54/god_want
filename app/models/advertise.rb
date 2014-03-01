class Advertise < ActiveRecord::Base
  include Shops::Noticeable
  
  belongs_to :want
  belongs_to :user
  has_many :likes, foreign_key: :target_id, class_name: Like::LikeAdvertise.name
  has_many :comments, foreign_key: :advertise_id, class_name: Comment::CommentAdvertise.name

  validates :want, :user, presence: true
end
