# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "open-uri"

# User.destroy_all
# Group.destroy_all
puts 'Destroying database...'
puts 'Creating database...'

# puts 'creating groups...'
# 14.times { Group.create(name: Faker::Name.name, event_type: Faker::SlackEmoji.activity, hourly_rate: rand(15..400), size: rand(2..100), location: Faker::Address.city, description: Faker::ChuckNorris.fact) }
# puts '14 groups created'

# puts 'creating users...'
# 10.times { User.create(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '123456') }
# puts '10 users created'

group_1 = Group.create(name: 'The 3 Brunch-keteers',
  event_type: 'Boozy Brunch',
  hourly_rate: 15,
  size: 3,
  location: 'Berlin',
  description: 'Three cool 26 year-old dudes that enjoy mimosas, pancakes and tipsy conversations on Sundays. Matt is a software engineer
  (the non-geeky kind), Joshua a financial analyst in a consulting firm (the non-stuck-up kind) and Peter is an artist (the super-cool kind)',
  availability: true,
  # photos: URI.open('https://i.pinimg.com/564x/37/60/2f/37602f1a51209cab9a4299bfbb8605b1.jpg')
)

user_1 = User.create(email: Faker::Internet.email,
  first_name: "Matthew",
  last_name: Faker::Name.last_name,
  password: '123456')

group_1.user = user_1
group_1.save
puts "Created: #{group_1.name}"

group_2 = Group.create(name: 'The Party Crew',
  event_type: 'Party',
  hourly_rate: 50,
  size: 5,
  location: 'Berlin',
  description: '5 long time best friends who have a taste for the party -- good music, good vibes, good company. What more does
  one need ? Book us for a night of dancing & laughter, you will not be disappointed. We dont go too crazy, but we could ;)',
  availability: true,
  # photos: URI.open('https://i.pinimg.com/564x/ab/68/92/ab6892ba3df7b8298f449f9a4ae1e6b8.jpg')
)

user_2 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

group_2.user = user_2
group_2.save
puts "Created: #{group_2.name}"

group_3 = Group.create(name: 'Good Time Gurus',
  event_type: 'Go-With-The-Flow',
  hourly_rate: 65,
  size: 7,
  location: 'Berlin',
  description: 'Our motto is: if you aint flowin, you aint livin. Our group of 7 is all about fluidity, love, life and adventure.
  We love meeting new people, learning about their human journey and connecting with them on a deeper level. We enjoy taking long
  walks during sunset, listening to music or creating it together, drinking tea with our feet in soft grass... lets enjoy the wonders
  this life has to offer together!',
  availability: true,
  # photos: URI.open('https://i.pinimg.com/564x/df/66/59/df66594d08ef35622b9e4de14e5e2eac.jpg')
)

user_3 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

group_3.user = user_3
group_3.save
puts "Created: #{group_3.name}"

group_4 = Group.create(name: 'Girls Just Wanna Have Fun',
  event_type: 'Party',
  hourly_rate: 60,
  size: 3,
  location: 'Berlin',
  description: 'Nathalia, Maddy and Jessica, three 25 year olds who love tequila, makeup, dancing and flirting with boys. Lets party together!
  Only requests from girls will be accepted -- no catfishing, we will find out if you are!',
  availability: true,
  # photos: URI.open('https://i.pinimg.com/564x/b7/7b/36/b77b36847790feb889c7c4cdb474d894.jpg')
)

user_4 = User.create(email: Faker::Internet.email,
  first_name: "Nathalia",
  last_name: Faker::Name.last_name,
  password: '123456')

group_4.user = user_4
group_4.save
puts "Created: #{group_4.name}"

group_5 = Group.create(name: 'The More the Merrier',
  event_type: 'XXL Event',
  hourly_rate: 350,
  size: 35,
  location: 'Hamburg',
  description: 'Looking to fill the room with fun, smart and good looking people -- look no more -- book us!',
  availability: true,
  # photos: URI.parse('https://i.pinimg.com/564x/94/2e/f4/942ef4063741de26fcdfe1765caca117.jpg')
)

user_5 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

group_5.user = user_5
group_5.save
puts "Created: #{group_5.name}"

group_6 = Group.create(name: 'Chillaxers',
  event_type: 'Chill & Games',
  hourly_rate: 30,
  size: 5,
  location: 'Hamburg',
  description: 'People often call us the board-game-fanatics.. and they wouldnt be wrong! As 5 lovers of the art of game,
  we find that the best nights are those where we get to connect over a game of D&D, Monopoly, Catan, Scrabble or even Bingo!
  All of us are very competitive, but with a positive spirit. We are more than happy to bring over some games or learn the
  one that you love to play the most. Book us, and let the games begin!',
  availability: true,
  # photos: URI.parse('https://i.pinimg.com/564x/a1/e9/d9/a1e9d9ccfda1915182f17b6673835a45.jpg')
)

user_6 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

group_6.user = user_6
group_6.save
puts "Created: #{group_6.name}"

group_7 = Group.create(name: 'Blonde Foodies',
  event_type: 'Boozy Brunch',
  hourly_rate: 50,
  size: 2,
  location: 'Berlin',
  description: 'Is Sunday really Sunday if you dont brunch? We know the best brunch spots in Berlin and will love to take you
  to them. Good times = mandatory, mimosas = optional.',
  availability: true,
  # photos: URI.parse('https://i.pinimg.com/564x/15/1f/29/151f298d52ce229c8791a415282c00cb.jpg')
)

user_7 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

group_7.user = user_7
group_7.save
puts "Created: #{group_7.name}"

group_8 = Group.create(name: 'Walkers',
  event_type: 'Go-With-The-Flow',
  hourly_rate: 20,
  size: 2,
  location: 'Berlin',
  description: 'Lets go for a walk!',
  availability: true,
  # photos: URI.parse('https://i.pinimg.com/564x/15/1f/29/151f298d52ce229c8791a415282c00cb.jpg')
)

group_8.user = user_1
group_8.save
puts "Created: #{group_8.name}"

puts "Groups: #{Group.count} created -- Users: #{User.count} created."
