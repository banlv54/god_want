class CreateWantTags < ActiveRecord::Migration
  def change
    create_table :want_tags do |t|
      t.integer :want_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
