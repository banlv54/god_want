class Tag < ActiveRecord::Base
  belongs_to :shop
  has_many :want_tags
end
