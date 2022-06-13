class CreateAdverts < ActiveRecord::Migration[7.0]
  def change
    create_table :adverts do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
