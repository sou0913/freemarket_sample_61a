class AddPhoneNumberDeliverToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number_deliver, :string
  end
end
