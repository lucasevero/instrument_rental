# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding..."

10.times do

  offer = Offer.new(
    instrument: Offer::INSTRUMENTS.sample,
    price: [100, 200, 300, 400, 500].sample,
    location: "Rio de Janeiro"
  )
  offer.user = User.find(rand(1..4))

  offer.save!

  puts "#{offer.id} - #{offer.instrument} - #{offer.price}"

end

puts "Done!"
