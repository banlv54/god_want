class NoticeShopRecipient < ActiveRecord::Base

  validates :receiver_shop, presence: true

  belongs_to :notice_shop
  belongs_to :receiver_shop, class_name: Shop.name
end
