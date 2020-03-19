# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Running the seeds"

Booking.destroy_all
Experience.destroy_all
User.destroy_all

puts "Old data wiped"

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

puts "Two users created"

experience1 = Experience.create(name: 'Wine tasting',
  user_id: user1.id,
  description: 'Tasting of wine',
  location: '137 Carrer Sant Antoni Maria Claret',
  date_choices: '3pm every Saturday',
  max_participants: 20,
  price: 30.00)

file1 = URI.open('https://source.unsplash.com/z38uTGNpNnA')
experience1.photo.attach(io: file1, filename: 'image1.png', content_type: 'image/png')

experience2 = Experience.create(name: 'Bungee jumping',
  user_id: user2.id,
  description: "Do you ever find yourself on top of a perfectly serviceable bridge and think what you'd really like to do is jump off?",
  location: '1829 Tyne Blvd',
  date_choices: '10am-4pm every day',
  max_participants: 20,
  price: 20.00)

file2 = URI.open('https://source.unsplash.com/J16ep2LfHwY')
experience2.photo.attach(io: file2, filename: 'image2.png', content_type: 'image/png')

experience3 = Experience.create(name: 'Segway tour',
  user_id: user1.id,
  description: 'Feel cooler than you look as you see the sights',
  location: '8620 Ruthelen St.',
  date_choices: '10am, 11am and 3pm Saturdays and Sundays',
  max_participants: 8,
  price: 25.00)

file3 = URI.open('https://source.unsplash.com/5clN6UY2oPQ')
experience3.photo.attach(io: file3, filename: 'image3.png', content_type: 'image/png')

experience4 = Experience.create(name: 'Jam Session',
  user_id: user1.id,
  description: 'Just a bunch of musicians making music together. All instruments welcome.',
  location: '2720 Biscay St.',
  date_choices: 'Thursday evenings',
  max_participants: 12,
  price: 2.00)

file4 = URI.open('https://source.unsplash.com/yzRK1hZJbP4')
experience4.photo.attach(io: file4, filename: 'image4.png', content_type: 'image/png')

puts "Four experiences created"
puts "Finished"
