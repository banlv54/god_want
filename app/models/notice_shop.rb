class NoticeShop < ActiveRecord::Base
  validates :targetable, :targetable_type, :send_user, presence: true

  belongs_to :send_user, class_name: User.name
  belongs_to :targetable, polymorphic: true
  has_many :notice_shop_recipients, dependent: :destroy

  accepts_nested_attributes_for :notice_shop_recipients

end
