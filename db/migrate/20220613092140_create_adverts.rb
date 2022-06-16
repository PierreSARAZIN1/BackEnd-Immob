class CreateAdverts < ActiveRecord::Migration[7.0]
  def change
    create_table :adverts do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.string :category
      t.integer :room
      t.integer :bathroom
      t.integer :area 
      t.string :address
      t.string :city
      t.string :zip_code
      t.boolean :garden
      t.boolean :garage
      t.string :pictures_url, array: true, default: []

      t.timestamps
    end
  end
end
