class NoticeRecipient < ActiveRecord::Base

  validates :receiver_user, presence: true

  belongs_to :notice
  belongs_to :receiver_user, class_name: User.name
  delegate :send_user, to: :notice
  delegate :targetable, to: :notice
  delegate :source_target, to: :notice

  def notice_type
    targetable.class.name.tableize.split("/").last
  end
end
