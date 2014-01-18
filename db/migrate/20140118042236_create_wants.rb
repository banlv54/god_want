class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|
      t.string :tags
      t.integer :user_id
      t.text :description
      t.string :image
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
