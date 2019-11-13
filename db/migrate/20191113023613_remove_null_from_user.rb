class RemoveNullFromUser < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :building_name, true 
    change_column_null :users, :phone_number,  true 
  end
end

