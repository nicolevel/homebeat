class AddNameToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :name, :string
  end
end
