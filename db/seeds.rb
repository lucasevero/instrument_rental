# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "deleting data"
Offer.destroy_all
puts "DB Clean!"

puts "Seeding..."

offer_1 = Offer.new(
  instrument: "guitar" ,
  price: 150,
  location: "Rio de Janeiro" ,
  description: "I used to play this guitar with my father but now I want someone to keep the good vibes!",
  user_id: 1
)
photo_1 = URI.open('https://i.pinimg.com/originals/3d/b5/1f/3db51fee85fd98e4accaa97dd6f58b93.jpg')
offer_1.photos.attach(io: photo_1, filename: 'guitar1.png', content_type: 'image/png')

offer_1.save!


offer_2 = Offer.new(
  instrument: "guitar" ,
  price: 180,
  location: "Rio de Janeiro" ,
  description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
  user_id: 1
)

photo_2 = URI.open('https://static.turbosquid.com/Preview/2015/09/06__08_32_18/GuitarFenderStratocasterRed_0010_Layer23TH.jpgacd6ad6b-a709-47d5-9b6d-a8d199747108Large.jpg')
offer_2.photos.attach(io: photo_2, filename: 'guitar2.png', content_type: 'image/png')

offer_2.save!


offer_3 = Offer.new(
  instrument: "guitar" ,
  price: 250,
  location: "Rio de Janeiro" ,
  description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
  user_id: 1
)
photo_3 = URI.open('https://sc1.musik-produktiv.com/pic-010126060xxl/fender-boxer-series-strat-hh-shm.jpg')
offer_3.photos.attach(io: photo_3, filename: 'guitar3.png', content_type: 'image/png')

offer_3.save!

offer_4 = Offer.new(
  instrument: "guitar" ,
  price: 210,
  location: "Rio de Janeiro" ,
  description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
  user_id: 1
)
photo_4 = URI.open('http://blog.mundomax.com.br/wp-content/uploads/2013/02/fender-roland-v-guitar.jpg')
offer_4.photos.attach(io: photo_4, filename: 'guitar4.png', content_type: 'image/png')

offer_4.save!

offer_5 = Offer.new(
  instrument: "guitar" ,
  price: 185,
  location: "Rio de Janeiro" ,
  description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
  user_id: 1
)
photo_5 = URI.open('https://http2.mlstatic.com/D_NQ_NP_845234-MLB25659712703_062017-O.jpg')
offer_5.photos.attach(io: photo_5, filename: 'guitar5.png', content_type: 'image/png')

offer_5.save!

puts "#{offer_5.id} - #{offer_5.instrument} - #{offer_5.price}"

puts "Done!"
puts "zo/"
