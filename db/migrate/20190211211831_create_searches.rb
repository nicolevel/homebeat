class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :category
      t.decimal :min_price
      t.decimal :max_price
      t.string :brand
      t.string :color
      t.string :key_features

      t.timestamps
    end
  end
end
