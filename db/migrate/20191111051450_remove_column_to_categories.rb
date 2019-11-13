class RemoveColumnToCategories < ActiveRecord::Migration[5.2]
  def change
    remove_index :categories, :parent_id
    remove_reference :categories, :parent
  end
end
