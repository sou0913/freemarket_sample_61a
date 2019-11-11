class RemoveTextToCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :text, :text
  end
end
