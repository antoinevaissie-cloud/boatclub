# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# Create fake users
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: '123456'
  )
end

# Clear the existing data
Boat.destroy_all

# Clear the existing data
Booking.destroy_all


50.times do
  Boat.create!(
    name: Faker::Creature::Cat.name,
    price: rand(100..3000),
    description: Faker::Lorem.paragraph,
    user: User.all.sample,
  )
end

Booking.create!(
  start_date: "31/01/2023",
  end_date: "31/01/2023",
  boat_id: Boat.first.id,
  user_id: User.first.id
)

Booking.create!(
  start_date: "31/01/2023",
  end_date: "31/01/2023",
  boat_id: Boat.last.id,
  user_id: User.last.id
)
