class Add11ColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :family_name, :string, null: false
    add_column :users, :first_name, :string, null: false
    add_column :users, :family_kana, :string, null: false
    add_column :users, :first_kana, :string, null: false
    add_column :users, :birthday, :date, null: false
    add_column :users, :postal_code, :string, null: false
    add_column :users, :prefectures, :integer, null: false
    add_column :users, :city, :string, null: false
    add_column :users, :house_number, :string, null: false
    add_column :users, :building_name, :string
    add_column :users, :phone_number, :string, null: false, unique: true
  end
end
