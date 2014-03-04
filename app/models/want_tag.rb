class WantTag < ActiveRecord::Base
  belongs_to :want
  belongs_to :tag

  validates :want_id, :uniqueness => {scope: :tag_id}
end
