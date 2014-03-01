class NoticeRecipient < ActiveRecord::Base

  validates :receiver_user, presence: true

  belongs_to :notice
  belongs_to :receiver_user, class_name: User.name
end
