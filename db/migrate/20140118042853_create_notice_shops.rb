class CreateNoticeShops < ActiveRecord::Migration
  def change
    create_table :notice_shops do |t|
      t.integer :shop_id
      t.integer :send_user_id
      t.string :type

      t.timestamps
    end
  end
end
