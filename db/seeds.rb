# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users"

User.destroy_all

User.create! email: 'robbie@ga.co', password: 'chicken', name: 'Robbie', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597293953/xtfyvqdheis6saszoj26.jpg', bio: 'Bio', linkedin: 'www.linkedin.com'

User.create! email: 'luke@ga.co', password: 'chicken', name: 'Luke', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597131882/Reichstag.jpg', bio: 'Bio', linkedin: 'www.linkedin.com'

puts "Created  #{ User.count } users"

puts "Creating cities"

City.destroy_all

c1 = City.create! name: 'Berlin', rank: 2, mercer: 'Ranked 9th', image1: 'berlin1.jpg', image2: 'berlin2.jpg', internet_speed: 'avg. 30Mbps'

c2 = City.create! name: 'Canggu', rank: 3, mercer: 'No data', image1: 'canggu1.jpg', image2: 'canggu2.jpg', internet_speed: 'avg. 19Mbps'

c3 = City.create! name: 'Lisbon', rank: 1, mercer: 'Ranked 37th', image1: 'lisbon1.jpg', image2: 'lisbon2.jpg', internet_speed: 'avg. 30Mbps'

puts "Created  #{ City.count } cities"

puts "Creating startups"
Startup.destroy_all

s1 = Startup.create! name: 'N26', description: 'Unicorn startup in fintech space operating throughout Europe. Based in Berlin.', valuation: 270000000, funding: 'Series D', status: 'private', employees: 1500, image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597275733/n26.png'

s2 = Startup.create! name: 'HelloFresh', description: 'Headquarters in Berlin. Unicorn company now with multinational operations.', valuation: 270000000, funding: 'IPO', status: 'public IPO', employees: 4726, image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597275729/hellofresh.png', website_url: 'https://www.hellofresh.de/'

s3 = Startup.create! name: 'GetYourGuide', description: 'Headquarters in Berlin. Operates an online platform for booking tours, attractions and activities worldwide', valuation: 200000, funding: 'Series E', status: 'unicorn, private', employees: 14, image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597275725/getyourguide.png', website_url: 'https://www.getyourguide.com/'

s4 = Startup.create! name: 'Unbabel', description: "Unbabel’s Customer Service Solution allows modern enterprises to understand and be understood by their customers in dozens of languages.", valuation: 60000000, funding: 'Series C', status: 'Late stage venture', employees: 150, image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597315171/unbabel.png', website_url: 'https://unbabel.com/'

s5 = Startup.create! name: 'Codacy', description: 'Automatically identify issues through static code review analysis. Get notified on security issues, code coverage, code duplication, and code complexity.' valuation: 14400000, funding: 'Venture round, 4 funding rounds', status: 'Private venture', employees: 10, image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597370008/codacy_u0ylrc.png', website_url: 'https://www.codacy.com/'

s6 = Startup.create! name: 'Labster', description: 'Operating in Denpasar. Virtual labs startup offering virtual labs to engage students with science.', valuation: 437000000, funding: 'Series Unknown', status: 'Private venture.', employees: 50, image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597369846/labster1.png', website_url: 'https://www.labster.com/'

puts "Created  #{ Startup.count } startups"

puts "Creating coworking spaces"

c1.startups << s1 << s2 << s3
c2.startups << s6
c3.startups << s4 << s5

CoworkingSpace.destroy_all

CoworkingSpace.create! name: 'Dojo Bali', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597371046/dojobali_hjubue.jpg', description: 'Great space with lots of good companies', reviews: "Location is on the beach, can't get much better", companies: 'Hubud started here', website_url: 'https://www.dojobali.org/'

CoworkingSpace.create! name: 'Betahaus Berlin', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597370915/betahaus_e24qmb.jpg', description: 'A great location', reviews: 'Lots of support provided and great coffee', companies: 'GetYourGuide have their offices in here', website_url: 'https://www.betahaus.com/'

puts "Created  #{ CoworkingSpace.count } coworking spaces"

