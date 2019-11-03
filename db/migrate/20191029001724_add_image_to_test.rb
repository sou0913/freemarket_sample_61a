class AddImageToTest < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :image, :string
  end
end
