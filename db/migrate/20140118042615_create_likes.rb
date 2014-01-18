class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :target_id
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
