require "csv"
CSV.foreach("db/categories.csv", headers: true) do |row|
  Category.create!(
    name: row['name'],
    parent_id: row['parent_id']
  )
end

User.create(nickname: 'admin', profile: 'hello!', email: 'admin@example.com', password: 'password', password_confirmation: "password")
