# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
# Car.destroy_all
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
  picture_url: 'https://ag-spots-2021.o.auroraobjects.eu/2021/04/21/lamborghini-urus-c504221042021000137_1.jpg',
  user_id: 1,
  price: 75
)

Car.create!(
  model: 'BMW',
  picture_url: 'https://wallpaperaccess.com/full/191738.jpg',
  user_id: 1,
  price: 65
)

Car.create!(
  model: 'Bugatti Chiron',
  picture_url: 'https://yeahmotor.com/wp-content/uploads/2017/11/Bugatti-Veyron.jpg',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Maserati',
  picture_url: 'https://cdn.motor1.com/images/mgl/nYgqx/s3/maserati-mc20-exterior.webp',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Lamborghini',
  picture_url: 'https://i.pinimg.com/originals/68/01/42/680142104b4df6e151fcb547a3f429eb.jpg',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Mazda',
  picture_url: 'https://cdn.wallpapersafari.com/15/26/HOKUqZ.jpg',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Jeep',
  picture_url: 'https://media.kidadl.com/602a80ceee47067dd9068621-jeep-names-are-cool-and-original.jpeg',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Tesla Model S',
  picture_url: 'https://cdn.motor1.com/images/mgl/LBB0L/s3/tesla-vehicles.webp',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Tesla Cyber Truck',
  picture_url: 'https://cardesignresearch.com/media/f14569b44f79224163bc81ed27932016_hr3.jpg',
  user_id: 1,
  price: 110
)

Car.create!(
  model: 'Mercedes-benz',
  picture_url: 'https://i.ytimg.com/vi/dip_8dmrcaU/maxresdefault.jpg',
  user_id: 1,
  price: 110
)

puts "seed working properly"
