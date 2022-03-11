# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts "Cleaning database..."

Car.destroy_all
puts "cars clean"
Booking.destroy_all
puts "bookings clean"
# User.destroy_all
puts "database is clean"

puts "Creating users..."

# User.create!(email: 'toto@gmail.com', password: "password")
# User.create!(email: 'coco@gmail.com', password: "password")
user = User.create!(email: 'coco@gmail.com', password: "password")

puts "Creating cars..."

file = URI.open('https://i.ytimg.com/vi/dip_8dmrcaU/maxresdefault.jpg')
car = Car.create!(model: 'Mercedes', price: "3999", user_id: user.id)
car.photo.attach(io: file, filename: 'car.png', content_type: 'image/png')

file1 = URI.open('https://static1.hotcarsimages.com/wordpress/wp-content/uploads/2020/02/Bugatti-Veyron-e1580873211810.jpg?q=50&fit=crop&w=800&dpr=1.5')
car1 = Car.create!(model: 'Bugatti', price: "6999", user_id: user.id)
car1.photo.attach(io: file1, filename: 'car.png', content_type: 'image/png')

file2 = URI.open('https://i.pinimg.com/originals/27/d5/32/27d532f9037f8dafa44405f516119082.jpg')
car2 = Car.create!(model: 'Mazda', price: "2999", user_id: user.id)
car2.photo.attach(io: file2, filename: 'car.png', content_type: 'image/png')

file3 = URI.open('https://data.whicdn.com/images/340684541/original.jpg')
car3 = Car.create!(model: 'Lamborghini', price: "4999", user_id: user.id)
car3.photo.attach(io: file3, filename: 'car.png', content_type: 'image/png')

file4 = URI.open('https://s3.amazonaws.com/the-drive-staging/message-editor%2F1515450280758-r8.jpg')
car4 = Car.create!(model: 'Audi', price: "1999", user_id: user.id)
car4.photo.attach(io: file4, filename: 'car.png', content_type: 'image/png')

file5 = URI.open('https://www.thesun.co.uk/wp-content/uploads/2019/06/NINTCHDBPICT000495128736-e1559653629944.jpg?strip=all&quality=100&w=1200&h=800&crop=1')
car5 = Car.create!(model: 'Lamborghini Urus', price: "5999", user_id: user.id)
car5.photo.attach(io: file5, filename: 'car.png', content_type: 'image/png')

file6 = URI.open('https://www.dealermanager.co.uk/images/201802/large/DM5925-nugcamki.jpg')
car6 = Car.create!(model: 'BMW', price: "2999", user_id: user.id)
car6.photo.attach(io: file6, filename: 'car.png', content_type: 'image/png')

file7 = URI.open('https://i.pinimg.com/originals/33/5c/af/335caf1965f3c034db2831762cc6c588.jpg')
car7 = Car.create!(model: 'Rolls Royce', price: "9999", user_id: user.id)
car7.photo.attach(io: file7, filename: 'car.png', content_type: 'image/png')

file8 = URI.open('https://c8.alamy.com/comp/E826D8/optimus-prime-transformers-truck-at-the-65th-iaa-commercial-vehicles-E826D8.jpg')
car8 = Car.create!(model: 'Euro Truck', price: "898", user_id: user.id)
car8.photo.attach(io: file8, filename: 'car.png', content_type: 'image/png')

file9 = URI.open('http://www.imcdb.org/i157741.jpg')
car9 = Car.create!(model: 'Bat Mobile', price: "999", user_id: user.id)
car9.photo.attach(io: file9, filename: 'car.png', content_type: 'image/png')
puts "seed working properly"
