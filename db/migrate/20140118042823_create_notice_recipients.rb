class CreateNoticeRecipients < ActiveRecord::Migration
  def change
    create_table :notice_recipients do |t|
      t.integer :notice_id
      t.integer :receiver_user_id

      t.timestamps
    end
  end
end
