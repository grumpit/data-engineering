class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.integer :user_id
      t.string :filename
      t.text :data

      t.timestamps
    end
  end
end
