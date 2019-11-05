class AddColumnToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :expiration_month, :integer, null: false
    add_column :cards, :expiration_year,  :integer, null: false
    add_column :cards, :security_code,    :integer, null: false
  end
end
