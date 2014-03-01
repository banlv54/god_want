module Notices
  module Noticeable
    extend ActiveSupport::Concern
    
    included do
      after_create :create_notice

      has_one :notice, as: :targetable, dependent: :destroy
    end

    def create_notice
      Notice.create(targetable_id: self.id, targetable_type: self.class.name,
                    send_user_id: send_user_id,
                    notice_recipients_attributes: notice_recipients_attrs)
    end

    def send_user_id
      user_id 
    end

    def notice_recipients_attrs
      case self.class.name
      when Comment.name
        recipients = [advertise.user_id] - [user_id]
        recipients.map { |id| {receiver_user_id: id}}
      when Like.name, Like::LikeComment.name, Like::LikeWant.name, Like::LikeAdvertise.name
        recipients = [target.user_id] - [user_id]
        recipients.map { |id| {receiver_user_id: id}}
      else
        []
      end
    end
  end
end
