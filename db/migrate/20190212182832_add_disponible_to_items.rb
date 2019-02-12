class AddDisponibleToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :disponible, :boolean, default: true
  end
end
