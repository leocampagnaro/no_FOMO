# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

group_1 = Group.create(name: 'The 3 Brunch-keteers',
  event_type: 'Boozy Brunch',
  hourly_rate: 15,
  size: 3,
  location: 'Berlin',
  description: 'Three cool 26 year-old dudes that enjoy mimosas, pancakes and tipsy conversations on Sundays. Matt is a software engineer
  (the non-geeky kind), Joshua a financial analyst in a consulting firm (the non-stuck-up kind) and Peter is an artist (the super-cool kind)',
  availability: true)

user_1 = User.create(email: Faker::Internet.email,
  first_name: "Matthew",
  last_name: Faker::Name.last_name,
  password: '123456')

avatar_1 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677229590/cld-sample.jpg")
user_1.photo.attach(io: avatar_1, filename: ".jpg", content_type: "image/jpg")
file_1 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677611752/no_fomo/Group_of_friends_eating_burger_on_mountain_top_p4gkry.jpg")
group_1.photos.attach(io: file_1, filename: ".jpg", content_type: "image/jpg")

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
  availability: true)

user_2 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

file_2 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677611365/no_fomo/__3_ayndin.jpg")
group_2.photos.attach(io: file_2, filename: ".jpg", content_type: "image/jpg")
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
  availability: true)

user_3 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

file_3 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677611433/no_fomo/__5_lixqca.jpg")
group_3.photos.attach(io: file_3, filename: ".jpg", content_type: "image/jpg")
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
  availability: true)

user_4 = User.create(email: Faker::Internet.email,
  first_name: "Nathalia",
  last_name: Faker::Name.last_name,
  password: '123456')

file_4 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677611360/no_fomo/__12cs___textfic___L_espoir_vlhbww.jpg")
group_4.photos.attach(io: file_4, filename: ".jpg", content_type: "image/jpg")
group_4.user = user_4
group_4.save
puts "Created: #{group_4.name}"

group_5 = Group.create(name: 'The More the Merrier',
  event_type: 'XXL Event',
  hourly_rate: 350,
  size: 35,
  location: 'Hamburg',
  description: 'Looking to fill the room with fun, smart and good looking people -- look no more -- book us!',
  availability: true)

user_5 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

file_5 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677611471/no_fomo/__7_li4ius.jpg")
group_5.photos.attach(io: file_5, filename: ".jpg", content_type: "image/jpg")
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
  availability: true)

user_6 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

file_6 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677752045/Board_in_the_Library_Part_Six__Board_Game_Night_Basics_1_gjqv5l.jpg")
group_6.photos.attach(io: file_6, filename: ".jpg", content_type: "image/jpg")
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
  availability: true)

user_7 = User.create(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  password: '123456')

file_7 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677611363/no_fomo/We_Found_the_Most_Instagrammed_Brunch_in_LA_ugbd5e.jpg")
group_7.photos.attach(io: file_7, filename: ".jpg", content_type: "image/jpg")
group_7.user = user_7
group_7.save
puts "Created: #{group_7.name}"

group_8 = Group.create(name: 'Walkers',
  event_type: 'Go-With-The-Flow',
  hourly_rate: 20,
  size: 2,
  location: 'Berlin',
  description: 'Lets go for a walk!',
  availability: true)

file_8 = URI.open("https://res.cloudinary.com/dp4lgffrz/image/upload/v1677611435/no_fomo/Sommer_rtbepz.jpg")
group_8.photos.attach(io: file_8, filename: ".jpg", content_type: "image/jpg")
group_8.user = user_1
group_8.save
puts "Created: #{group_8.name}"
puts "Groups: #{Group.count} created -- Users: #{User.count} created."

booking_1 = Booking.create(
  date: "24/04/2023",
  hours_booked: 3)
booking_1.user = user_1
booking_1.group = group_1
booking_1.save
puts "Created: #{booking_1.date}"
