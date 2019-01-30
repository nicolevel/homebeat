class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :key_features
      t.decimal :price
      t.string :category
      t.string :brand
      t.string :color

      t.timestamps
    end
  end
end
