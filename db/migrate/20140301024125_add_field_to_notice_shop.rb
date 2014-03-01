class AddFieldToNoticeShop < ActiveRecord::Migration
  def change
    add_column :notice_shops, :targetable_id, :integer
    add_column :notice_shops, :targetable_type, :string
  end
end
