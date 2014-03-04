class Want < ActiveRecord::Base
  include Shops::Noticeable

  has_many :likes, foreign_key: :target_id, class_name: Like::LikeWant.name
  has_many :advertises
  has_many :want_tags

  validates :description, presence: true

  after_save :create_want_tags

  def shops
    Shop.all # TODO
  end

  def create_want_tags
    self.tags.split(",").uniq.reject(&:blank?).each do |tag_id|
      self.want_tags.create(tag_id: tag_id)
    end
  end
end
