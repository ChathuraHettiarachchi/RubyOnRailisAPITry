# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do |user|
  User.create!(
    first_name: Faker::Book.title,
    last_name: Faker::Book.title,
    phone: "0123456789",
    address: "Malabe",
    description: Faker::Lorem.sentence(50),
    password: "123123123",
    password_confirmation: "123123123",
    email: "member.#{user}@gmail.com"
  )
end
puts "2 Users created"

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
puts "1 Admin User created"

10.times do |article|
  Article.create!(
    title: Faker::Lorem.sentence(1 + article),
    body: Faker::Lorem.sentence(100),
    user_id: User.first.id
  )
end
puts "10 Articles created"
