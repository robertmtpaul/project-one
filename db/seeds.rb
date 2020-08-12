# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users"

User.destroy_all

User.create! email: 'robbie@ga.co', password: 'chicken', name: 'Robbie', image: 'http://place-puppy.com/200x200', bio: 'Blah', linkedin: 'www.linkedin.com'

User.create! email: 'lay@ga.co', password: 'chicken', name: 'Lay', image: 'http://place-puppy.com/200x200', bio: 'Blah', linkedin: 'www.linkedin.com'

puts "Created  #{ User.count } users"

puts "Creating cities"

City.destroy_all

City.create! name: 'Berlin', rank: 3, mercer: '2020: ranked 9th', image1: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597132146/berlin_thumbnail_buxa7e.jpg', image2: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597131564/Berlin1.jpg', internet_speed: 'avg. 30Mbps'

City.create! name: 'Canggu', rank: 1, mercer: '2020: ranked 400', image1: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597138173/canggu_thumbnail.jpg', image2: 'http://place-puppy.com/200x200', internet_speed: 'avg. 19Mbps'

puts "Created  #{ City.count } cities"

puts "Creating startups"
Startup.destroy_all

Startup.create! name: 'N26', description: 'Unicorn startup in fintech space operating throughout Europe. Based in Berlin.', valuation: 270000000, funding: 'Series D', status: 'private', city_id: 1, employees: 1500, favourite_id: '1', country_id: '2'

Startup.create! name: 'HelloFresh', description: 'Unicorn company now with multinational operations.', valuation: 270000000, funding: 'IPO', status: 'public IPO', city_id: 1, employees: 4726, favourite_id: '1', country_id: '2'

Startup.create! name: 'GetYourGuide', city_id: 1, description: 'Operates an online platform for booking tours, attractions and activities worldwide', valuation: 200000, funding: 'Series E, $654.5M', status: 'unicorn, private', employees: 2, favourite_id: '2', country_id: '3'


puts "Created  #{ Startup.count } startups"

