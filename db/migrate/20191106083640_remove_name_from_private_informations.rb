class RemoveNameFromPrivateInformations < ActiveRecord::Migration[5.2]
  def change
    remove_column :private_informations, :name, :string
  end
end
