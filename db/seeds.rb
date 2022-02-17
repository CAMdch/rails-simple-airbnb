# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database'
Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: 'London',
  url_img: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'St Pancras Clock Tower Guest Suite',
  address: 'London',
  url_img: 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=1200',
  description: 'A mini apartment within the clock tower apartment at St Pancras Station, with its own en suite bathroom and kitchen and sitting area.',
  price_per_night: 200,
  number_of_guests: 2
)

Flat.create!(
  name: '  Spacious and brilliantly located apartment',
  address: 'Lima',
  url_img: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.book-a-flat.com%2Ffr%2Flocation-luxe.html&psig=AOvVaw1ArWA09EXQ82d2uLWK226e&ust=1645107819295000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDlxau2hPYCFQAAAAAdAAAAABAD',
  description: 'Spacious, bright and peaceful new apartment with outdoor space. Patio doors open onto a private balcony overlooking a garden below.',
  price_per_night: 300,
  number_of_guests: 8
)

Flat.create!(
  name: 'The Zen Getaway, Sauna and Balneotherapy',
  address: 'Lille',
  url_img: 'https://pic.le-cdn.com/thumbs/520x390/04/1/properties/Property-338e0000000006fe000161b9b51e-117345843.jpg',
  description: '  Luxurious modern apartment of 55m2 refurbished named "Lescapade Zen".
  Ideal geographical location on the seafront, close to the shops of the city center and the sea.',
  price_per_night: 50,
  number_of_guests: 1
)

puts 'Finished !'
