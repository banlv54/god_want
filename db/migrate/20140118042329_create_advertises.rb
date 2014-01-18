class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.integer :want_id
      t.integer :product_id
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
