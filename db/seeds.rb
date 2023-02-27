# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Group.destroy_all

# puts 'destroying everything'

# puts 'creating groups...'
# 14.times { Group.create(name: Faker::Name.name, event_type: Faker::SlackEmoji.activity, hourly_rate: rand(15..400), size: rand(2..100), location: Faker::Address.city, description: Faker::ChuckNorris.fact) }
# puts '14 groups created'

# puts 'creating users...'
# 10.times { User.create(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '123456') }
# puts '10 users created'
