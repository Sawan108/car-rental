# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts "Cleaning database..."

# Car.destroy_all

puts "database is clean"
puts "Creating cars..."

file = URI.open('https://i.ytimg.com/vi/dip_8dmrcaU/maxresdefault.jpg')
car = Car.create!(model: 'Mercedes', price: "99999", user_id: 1)
car.photos.attach(io: file, filename: 'car.png', content_type: 'image/png')

corolla = Car.create!(model: "corolla", price: 155.99, user_id: 2)

belta = Car.create!(model: "belta", price: 235.99, user_id: 2)

crusier = Car.create!(model: "urban crusier", price: 225.99, user_id: 2)

argya = Car.create!(model: "argya", price: 245.99, user_id: 2)

rav = Car.create!(model: "rav4", price: 235.99, user_id: 2)

hilux = Car.create!(model: "hilux", price: 255.99, user_id: 2)

starlet = Car.create!(model: "starlet", price: 355.99, user_id: 2)

rumion = Car.create!(model: "rumion", price: 265.99, user_id: 2)


puts "seed working properly"
