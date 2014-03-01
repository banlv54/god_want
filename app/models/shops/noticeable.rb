module Shops
  module Noticeable
    extend ActiveSupport::Concern
    
    included do
      after_create :create_notice
      
      has_one :notice_shop, as: :targetable, dependent: :destroy
    end

    def create_notice
      NoticeShop.create(targetable_id: self.id, targetable_type: self.class.name,
                        send_user_id: send_user_id,
                        notice_shop_recipients_attributes: notice_recipients_attrs)
    end

    def send_user_id
      user_id 
    end

    def notice_recipients_attrs
      case self.class.name
      when Want.name
        recipients = shops.map(&:id)
        recipients.map { |id| {receiver_shop_id: id}}
      else
        []
      end
    end
  end
end
