class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :owner_id
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :country
      t.string :zipcode
      t.string :tel
      t.string :banner
      t.string :tags

      t.timestamps
    end
  end
end
