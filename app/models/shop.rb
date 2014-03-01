class Shop < ActiveRecord::Base

  has_many :received_notices, class_name: NoticeShopRecipient.name, foreign_key: :receiver_shop_id, dependent: :destroy
end
