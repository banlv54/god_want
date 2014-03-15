class Shop < ActiveRecord::Base

  has_many :received_notices, class_name: NoticeShopRecipient.name, foreign_key: :receiver_shop_id, dependent: :destroy
  has_many :user_shops
  has_many :users, through: :user_shops
  has_many :categories
  mount_uploader :banner, ImageUploader
  belongs_to :user, foreign_key: :owner_id

  has_many :tags
  has_many :roles, through: :user_shops

  accepts_nested_attributes_for :tags, allow_destroy: true

  after_save :create_user_shop

  scope :all_user_shops, -> user_id{UserShop.where(user_id: user_id).order("role_id").map(&:shop_id)}
  scope :all_shops, -> user_id{where(id: all_user_shops(user_id))}
  private
  def create_user_shop
    self.user_shops.create(user_id: self.owner_id, shop_id: self.id, role_id: 1)
  end
end
