class Product < ActiveRecord::Base
  belongs_to :category
  validates :category, presence: true

  scope :shop_products, -> category_ids{joins(:category).where(category_id: category_ids)}

  mount_uploader :images, ImageUploader
end
