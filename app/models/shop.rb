class Shop < ActiveRecord::Base
  has_many :received_notices, class_name: NoticeShopRecipient.name, foreign_key: :receiver_shop_id, dependent: :destroy
  has_many :user_shops
  has_many :users, through: :user_shops
  has_many :categories
  mount_uploader :banner, ImageUploader
  belongs_to :user, foreign_key: :owner_id

  after_save :create_user_shop

  private
  def create_user_shop
    self.user_shops.create(user_id: self.owner_id, shop_id: self.id, role_id: 1)
  end
end
