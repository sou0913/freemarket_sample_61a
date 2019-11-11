class AddNameToPrivateInformations < ActiveRecord::Migration[5.2]
  def change
    add_column :private_informations, :family_name, :string
    add_column :private_informations, :first_name, :string
  end
end
