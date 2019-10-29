class CreatePrivateInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :private_informations do |t|
      t.string :name,           null: false
      t.string :family_kana,    null: false
      t.string :first_kana,     null: false
      t.date :birthday,         null: false
      t.string :postal_code,    null: false
      t.integer :prefectures,   null: false
      t.string :city,           null: false
      t.string :house_number,   null: false
      t.string :building_name,  null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
