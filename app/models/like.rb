class Like < ActiveRecord::Base
  include Notices::Noticeable

  belongs_to :user
end
