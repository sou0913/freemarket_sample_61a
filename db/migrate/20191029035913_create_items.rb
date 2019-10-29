class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :price,           null: false
      t.string  :description,     null: false
      t.string  :title
      t.references :category,     null: false, foreign_key: true
      t.integer :status,          null: false
      t.integer :region,          null: false
      t.integer :shipping_charge, null: false
      t.integer :delivery_source, null: false
      t.integer :shipping_day,    null: false
      t.integer :shipping_method, null: false
      t.integer :dealing,         null: false, default: 0
      t.references :user,         null: false, foreign_key: true
      t.references :brand,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
