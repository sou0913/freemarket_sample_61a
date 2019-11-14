class AddIndexItemsDealing < ActiveRecord::Migration[5.2]
  def change
    add_index :items, :dealing
  end
end
