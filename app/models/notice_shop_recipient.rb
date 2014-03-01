class NoticeShopRecipient < ActiveRecord::Base

  validates :receiver_shop, presence: true

  belongs_to :notice_shop
  belongs_to :receiver_shop, class_name: Shop.name
  delegate :send_user, to: :notice_shop
  delegate :targetable, to: :notice_shop
  delegate :source_target, to: :notice_shop

  def notice_type
    targetable.class.name.tableize.split("/").last
  end

end
