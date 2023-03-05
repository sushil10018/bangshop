class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
