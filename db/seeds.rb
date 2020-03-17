# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new
user1.email = 'test@example.com'
user1.password = 'password'
user1.password_confirmation = 'password'
user1.save!

user2 = User.new
user2.email = 'fake@mcphakerson.com'
user2.name = 'Fakey McPhakerson'
user2.password = 'fakeitup'
user2.password_confirmation = 'fakeitup'
user2.save!

Experience.create(name: 'Wine tasting',
  user_id: user1.id,
  description: 'Tasting of wine',
  location: 'Some vineyard',
  date_choices: '3pm every Saturday',
  max_participants: 20,
  price: 30.00,
  photo: 'https://source.unsplash.com/z38uTGNpNnA')

Experience.create(name: 'Bungee jumping',
  user_id: user2.id,
  description: 'No idea why you would want to',
  location: 'A very high place',
  date_choices: '10am-4pm every day',
  max_participants: 20,
  price: 20.00,
  photo: 'https://source.unsplash.com/J16ep2LfHwY')

Experience.create(name: 'Segway tour',
  user_id: user1.id,
  description: 'Feel cooler than you look as you see the sights',
  location: 'City centre',
  date_choices: '10am, 11am and 3pm Saturdays and Sundays',
  max_participants: 8,
  price: 25.00,
  photo: 'https://source.unsplash.com/5clN6UY2oPQ')
