Items.create(price:3000, description:"3年前に佐々木が買ったパソコンです", title:"パソコン", 
status: 3, shipping_charge: 2, delivery_source: 2, shipping_day: 1, shipping_method: 1,
user_id: 1)




t.integer "price", null: false
t.string "description", null: false
t.string "title"
t.integer "status", null: false
t.integer "shipping_charge", null: false
t.integer "delivery_source", null: false
t.integer "shipping_day", null: false
t.integer "shipping_method", null: false
t.integer "dealing", default: 0, null: false
t.bigint "user_id", null: false
t.datetime "created_at", null: false
t.datetime "updated_at", null: false