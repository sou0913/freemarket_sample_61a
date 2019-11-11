class DropTablePrivateInformations < ActiveRecord::Migration[5.2]
  def change
    drop_table :private_informations
  end
end
