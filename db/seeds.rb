# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
User.create!(
  email: "user@email.com",
  password: "password"
)
puts "database is clean"
puts "Creating cars..."

# corolla = Car.create(model: "corolla", price: 155.99, user_id: 1)
# corolla.save!

# belta = Car.create(model: "belta", price: 135.99, user_id: 1)
# belta.save!

# crusier = Car.create(model: "urban crusier", price: 125.99, user_id: 1)
# crusier.save!

# argya = Car.create(model: "argya", price: 145.99, user_id: 1)
# argya.save!

# rav = Car.create(model: "rav4", price: 135.99, user_id: 1)
# rav.save!

# hilux = Car.create(model: "hilux", price: 255.99, user_id: 1)
# hilux.save!

# starlet = Car.create(model: "starlet", price: 355.99, user_id: 1)
# starlet.save!

# rumion = Car.create(model: "rumion", price: 165.99, user_id: 1)
# rumion.save!
Car.create!(
  model: 'Lamborghini Urus',
  user_id: 1,
  price: 75
)

Car.create!(
  model: 'BMW',
  user_id: 1,
  price: 65
)

Car.create!(
  model: 'Bugatti Chiron',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Maserati',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Lamborghini',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Mazda',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Jeep',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Tesla Model S',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Tesla Cyber Truck',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Mercedes-benz',
  user_id: 1,
  price: 110
)

puts "seed working properly"
