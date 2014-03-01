class CreateNoticeShopRecipients < ActiveRecord::Migration
  def change
    create_table :notice_shop_recipients do |t|
      t.integer :notice_shop_id
      t.integer :receiver_shop_id
      t.string :type

      t.timestamps
    end
  end
end
