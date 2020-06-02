# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Faker::Name.first_name
Faker::Date.forward(days:5)
Faker::Date.backward(days:5)
Faker::Cannabis.health_benefit

range = (1..5)

for k in range do
  User.new(name: Faker::Name.first_name ).save
end

for j in range do
  if j<3
    Event.new(user_id: j, title: Faker::Cannabis.health_benefit, date: Faker::Date.backward(days: rand(5))).save
  else
    Event.new(user_id: j, title: Faker::Cannabis.health_benefit, date: Faker::Date.forward(days: rand(5))).save
  end

end
