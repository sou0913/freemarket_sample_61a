class CreatePrivateInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :private_informations do |t|

      t.timestamps
    end
  end
end
