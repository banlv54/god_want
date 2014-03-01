class Want < ActiveRecord::Base
  include Shops::Noticeable

  has_many :likes, foreign_key: :target_id, class_name: Like::LikeWant.name

  def shops
    Shop.all # TODO
  end
end
