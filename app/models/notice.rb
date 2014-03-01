class Notice < ActiveRecord::Base

  validates :targetable, :targetable_type, :send_user, presence: true

  belongs_to :send_user, class_name: User.name
  belongs_to :targetable, polymorphic: true
  has_many :notice_recipients, dependent: :destroy

  accepts_nested_attributes_for :notice_recipients

  def targetable_type=(sType)
    super(sType.to_s.classify.constantize.base_class.to_s)
  end

  def source_target
    case targetable.class.name
    when Like::LikeComment.name
      targetable.target.advertise.want
    when Like::LikeAdvertise.name
      targetable.target.want
    when Like::LikeWant.name
      targetable.target
    when Comment.name
      targetable.advertise.want
    when Advertise.name
      targetable.want
    else
      nil
    end
  end
end
