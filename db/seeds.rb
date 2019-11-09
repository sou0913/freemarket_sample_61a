require "csv"
CSV.foreach("db/categories.csv", headers: true) do |row|
  Category.create!(
    name: row['name'],
    parent_id: row['parent_id']
  )
end

User.create(nickname: 'admin', profile: 'hello!', email: 'admin@example.com', password: 'password', password_confirmation: "password",
family_name: "sasaki", first_name: "sou", family_kana: "ササキ", first_kana: "ソウ", birthday: "2019/02/02", postal_code:"a",prefectures:"b",
city: "c", house_number:"1", building_name:"2", phone_number:"3")
