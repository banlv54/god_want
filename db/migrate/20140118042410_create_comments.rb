class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :advertise_id
      t.integer :user_id
      t.text :comment

      t.timestamps
    end
  end
end
