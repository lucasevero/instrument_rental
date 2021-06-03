# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "deleting data"
Deal.destroy_all if Rails.env.development?
Offer.destroy_all if Rails.env.development?
puts "DB Clean!"

puts "Seeding..."

# andre = User.new(
#   email: 'dede.menezes@gmail.com',
#   username: 'dedemenezes',
#   password: '123456',
#   first_name: 'André',
#   last_name: 'Menezes'
#   )
andre = User.find(5)
avatar_andre = URI.open("https://kitt.lewagon.com/placeholder/users/dedemenezes")
andre.photo.attach(io: avatar_andre, filename: 'avatar_andre.png', content_type: 'image/png')
andre.save!

# luca = User.new(
#   email: 'luca.severo@gmail.com',
#   username: 'lucasevero',
#   password: '123456',
#   first_name: 'Luca',
#   last_name: 'Severo'
#   )
luca = User.find(6)
avatar_luca = URI.open("https://kitt.lewagon.com/placeholder/users/lucasevero")
luca.photo.attach(io: avatar_luca, filename: 'avatar_luca.png', content_type: 'image/png')
luca.save!

offer_1 = Offer.new(
  name: "2017 FENDER CUSTOM SHOP '61 HEAVY RELIC STRAT IN FIESTA RED & TWEED HARD CASE",
  instrument: "Electric Guitar",
  price: 150,
  location: "Rio de Janeiro",
  description: "Amazing Re-issue finished in heavy relic Fiesta Red. 1960’s contoured Alder body.
1965 C profile Maple neck with an AAA Rosewood board 10” Radius and wide dot spacing.
21 Medium Jumbo Frets. Nut width 1.650”. Custom shop fat 60s pickups.
Modern wiring with a 5 way toggle switch. American vintage relic'ed hardware and plastics.
The guitar weighs 3.5Kg or 7.77. Great player and great sounding.
Please see the shop traveler sheet in the photos for more detailed specs.
Comes with the original CS tweed case",
  overview: "NEW KINGS ROAD VINTAGE GUITAR EMPORIUM ARE PLEASED TO BE ABLE TO OFFER FOR SALE THIS
2017 Fender Custom Shop 1961 Stratocaster Heavy Relic",
  user_id: andre.id
)
photo_1_1 = URI.open('https://i.ebayimg.com/images/g/c2oAAOSwb-pguRYb/s-l500.jpg')
offer_1.photos.attach(io: photo_1_1, filename: 'guitar1_1.png', content_type: 'image/png')
photo_1_2 = URI.open('https://i.ebayimg.com/images/g/dM8AAOSwAgNguRYe/s-l500.jpg')
offer_1.photos.attach(io: photo_1_2, filename: 'guitar1_2.png', content_type: 'image/png')
photo_1_3 = URI.open('https://i.ebayimg.com/images/g/QP4AAOSwY4lguRYW/s-l500.jpg')
offer_1.photos.attach(io: photo_1_3, filename: 'guitar1_3.png', content_type: 'image/png')
photo_1_4 = URI.open('https://i.ebayimg.com/images/g/h4cAAOSwdHFguRYl/s-l500.jpg')
offer_1.photos.attach(io: photo_1_4, filename: 'guitar1_4.png', content_type: 'image/png')
photo_1_5 = URI.open('https://i.ebayimg.com/images/g/cagAAOSw~i5guRYo/s-l500.jpg')
offer_1.photos.attach(io: photo_1_5, filename: 'guitar1_5.png', content_type: 'image/png')

offer_1.save!


offer_2 = Offer.new(
  name: "Washburn Nuno Bettencourt Signature Model N4 - Natural - Ebony Fretboard - MIJ",
  instrument: "Electric Guitar",
  price: 180,
  location: "Rio de Janeiro",
  description: "Washburn Nuno Bettencourt Signature Model  N4E-SA Made in Japan
SN#: 0198
Weight: 7 lbs
Comes with Tremelo Arm & Gig Bag
For almost 3 decades, guitar virtuoso Nuno Bettencourt and Washburn have paired up to design and craft the thrilling guitar players main axes. His celebrated N4 and the special variations of this revered instrument have been on stages all over the world. From his time as lead guitarist for the Platinum selling band Extreme, as an acclaimed solo musician, as Musical Director for the multi Grammy Award winning songwriter Rihanna or as a member of Steve Vai’s touring super group of guitarists Generation Axe, Nuno’s N4 has been there. 

Crafted with an alder body, ebony fretboard and birds-eye maple neck; the 4N features the Stephens Extended Cutaway, a Seymour Duncan ’59 pickup in the neck position and Bill Lawrence L-500 in the bridge. A Schaller made Floyd Rose Original Tremolo unit is paired with a Kahler nut and a single volume control and three-way selector switch round out the electronic setup.
Whether you’re one of the hardcore Nuno fans the world over, or an accomplished musician looking for a unique and finely crafted instrument to compliment your playing style; the new Washburn 4N Signature Nuno Bettencourt guitar is an excellent option to add to your collection.
This guitar has been rocked as you can see from the pics. It has naturally aged and is in a light relic condition. ",
  overview: "For almost 3 decades, guitar virtuoso Nuno Bettencourt and Washburn have paired up to design and craft the thrilling guitar players main axes. His celebrated N4 and the special variations of this revered instrument have been on stages all over the world.",
  user_id: andre.id
)

photo_2 = URI.open('https://i.ebayimg.com/images/g/PCUAAOSwhA5gtP8e/s-l500.jpg')
offer_2.photos.attach(io: photo_2, filename: 'guitar2.png', content_type: 'image/png')

offer_2.save!


offer_3 = Offer.new(
  name: "Tokai SG electric guitar",
  instrument: "Electric Guitar",
  price: 250,
  location: "Rio de Janeiro",
  description: "Tokai SG 124 electric guitar
Serial 130001507

Chinese model

comes in very good shape. Please check pictures for more info.

guitar ready to play, in very good working shape.
Gamme de produits Gibson Les Paul
Configuration des cordes  6 cordes
EAN Non applicable
Modèle  SG
Époque  Contemporaine
Marque  Tokai
Numéro de pièce fabricant SG",
  overview: "Tokai electric guitar, SG model
Chinese manufacturing
Very good condition, guitar perfectly functional ET immediately playable.
",
  user_id: andre.id
)
photo_3 = URI.open('https://i.ebayimg.com/images/g/hGUAAOSwIitgtmF4/s-l500.jpg')
offer_3.photos.attach(io: photo_3, filename: 'guitar3.png', content_type: 'image/png')

offer_3.save!

offer_4 = Offer.new(
  name: "1956 FENDER MUSIC MASTER USA",
  instrument: "Electric Guitar",
  price: 210,
  location: "Rio de Janeiro",
  description: "Business seller information
Oliver Grandke, music-outlet-shop
Oliver Grandke
Aquinostr. 1
50670 Köln
Germany

Phone:015203251233
Email:music-outlet@gmx.de",
  overview: "1956 FENDER MUSIC MASTER - made in USA:+ body finished in original desert sand, has laquer wear+ maple neck with mild V shaping+ 1 single coil pickup+ original except for: tuners,pots,cap,knobs and bridge saddles+ low action - plays perfect !",
  user_id: andre.id
)
photo_4 = URI.open('https://i.ebayimg.com/images/g/Yu8AAOSwBahVIsOf/s-l500.jpg')
offer_4.photos.attach(io: photo_4, filename: 'guitar4.png', content_type: 'image/png')

offer_4.save!

offer_5 = Offer.new(
  name: "TANGLEWOOD SIGNATURE '58 LP - LEFT HAND",
  instrument: "Electric Guitar",
  price: 185,
  location: "Rio de Janeiro",
  description: "Business seller information
Oliver Grandke, music-outlet-shop
Oliver Grandke
Aquinostr. 1
50670 Köln
Germany

Phone:015203251233
Email:music-outlet@gmx.de",
  overview: "NEW OLD STOCK:TANGLEWOOD SIGNATURE '58 LP - LEFT HAND:SHAPE Single CutawayTOP Flame Maple VeneerTOP BINDING Cream ABSBODY Solid MahoganyNECK (MATERIAL) MahoganyNECK (BUILD) Set neckFINGERBOARD RosewoodNUT (WIDTH) Cream ABS (43mm)SCALE LENGTH 628mmMACHINE HEADS Kluson Style, Tulip ButtonsINLAYS Block, Mother of PearlPICKGUARD CreamHARDWARE NickelFINISH Red Sunburst GlossPICKUPS 2 x Entwistle Alnico HV58STRINGS D'Addario 009",
  user_id: andre.id
)
photo_5 = URI.open('https://i.ebayimg.com/images/g/qS4AAOSwsrBcfvoR/s-l500.jpg')
offer_5.photos.attach(io: photo_5, filename: 'guitar5.png', content_type: 'image/png')

offer_5.save!

violin = Offer.new(
  name: "Old Violin Cased Atic Find",
  instrument: "Violin",
  price: 300,
  location: "Rio de Janeiro",
  description: "Length of back is approximately 360mm or 14 inches.

All items have come from local house clearances and are fresh to the market and to be sold with no reserve. The items all have natural ware consistent with their age. Please look at photographs to aid description. Dispatched with Royal Mail signed & tracked overseas buyers will incur extra postage and shipping costs depending upon location. I am happy to combine any postage and shipping on multiple purchases. We are happy to obtain a shipping quote for any location. If you win the item let us know and we will invoice you with the cost for your location along with the purchase price.

If you don’t intend to pay for the item please don’t bid as it is a waste of your time and mine & stops a genuine bidder winning the item",
  overview: "Old vintage violin with case in as found condition has come from an atic from a local residence. I know nothing about violins at all so sold as scene and has had no restoration. I have tried to show any ware and damage in the photographs. The violin is in nice original condition and has some surface ware i.e odd small scratches here and there consistent with there age. These blemishes and ware do not detract form the appearance of the item in any way.",
  user_id: luca.id
)
photo_6 = URI.open('https://i.ebayimg.com/images/g/WgAAAOSwLq1gr6Fm/s-l500.jpg')
violin.photos.attach(io: photo_6, filename: 'guitar6.png', content_type: 'image/png')

violin.save!

puts "Done!"
puts "zo/"
