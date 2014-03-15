class UserShop < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user
  belongs_to :role

  validates_uniqueness_of :user_id, scope: :shop_id

  scope :get_role_id, ->user_id, shop_id{where(user_id: user_id, shop_id: shop_id).first.try(:role_id)}
end
