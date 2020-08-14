# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users"

User.destroy_all

User.create! email: 'robbie@ga.co', password: 'chicken', name: 'Robbie', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597293953/xtfyvqdheis6saszoj26.jpg', bio: 'Blah', linkedin: 'www.linkedin.com'

User.create! email: 'luke@ga.co', password: 'chicken', name: 'Luke', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597131882/Reichstag.jpg', bio: 'Blah', linkedin: 'www.linkedin.com'

puts "Created  #{ User.count } users"

puts "Creating cities"

City.destroy_all

c1 = City.create! name: 'Berlin', rank: 2, mercer: '2020: ranked 9th', image1: 'berlin1.jpg', image2: 'berlin2.jpg', internet_speed: 'avg. 30Mbps'

c2 = City.create! name: 'Canggu', rank: 3, mercer: 'No data', image1: 'canggu1.jpg', image2: 'canggu2.jpg', internet_speed: 'avg. 19Mbps'

c3 = City.create! name: 'Lisbon', rank: 1, mercer: '2020: ranked 400', image1: 'lisbon1.jpg', image2: 'lisbon2.jpg', internet_speed: 'avg. 19Mbps'

puts "Created  #{ City.count } cities"

puts "Creating startups"
Startup.destroy_all

s1 = Startup.create! name: 'N26', description: 'Unicorn startup in fintech space operating throughout Europe. Based in Berlin.', valuation: 270000000, funding: 'Series D', status: 'private', city_id: 1, employees: 1500, favourite_id: '1', country_id: '2', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597275733/n26.png'

s2 = Startup.create! name: 'HelloFresh', description: 'Headquarters in Berlin. Unicorn company now with multinational operations.', valuation: 270000000, funding: 'IPO', status: 'public IPO', city_id: 1, employees: 4726, favourite_id: '1', country_id: '2', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597275729/hellofresh.png'

s3 = Startup.create! name: 'GetYourGuide', city_id: 1, description: 'Headquarters in Berlin. Operates an online platform for booking tours, attractions and activities worldwide', valuation: 200000, funding: 'Series E, $654.5M', status: 'unicorn, private', employees: 2, favourite_id: 'delete', country_id: 'delete',image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597275725/getyourguide.png'

s4 = Startup.create! name: 'Unbabel', city_id: 1, description: "Unbabel’s Customer Service Solution allows modern enterprises to understand and be understood by their customers in dozens of languages. https://unbabel.com/", valuation: 200000, funding: 'TBD', status: 'Unicorn, private', employees: 101, favourite_id: '2', country_id: 'delete', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597315171/unbabel.png'

s5 = Startup.create! name: 'Codacy', city_id: 1, description: 'Automatically identify issues through static code review analysis. Get notified on security issues, code coverage, code duplication, and code complexity in every commit and pull request, directly from your current workflow. https://www.codacy.com/', valuation: 14400000, funding: 'TBD', status: 'TBD', employees: 10, favourite_id: '2', country_id: 'delete', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597315428/download-2_wf2ums.png'

s6 = Startup.create! name: 'Labster', city_id: 1, description: 'Labs company operating out of Denpasar', valuation: 200000, funding: 'TBC', status: 'larger company', employees: 50, favourite_id: 'delete', country_id: 'delete', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597315044/labster.png'

puts "Created  #{ Startup.count } startups"

puts "Creating coworking spaces"

c1.startups << s1 << s2 << s3
c2.startups << s6
c3.startups << s4 << s5

CoworkingSpace.destroy_all

CoworkingSpace.create! name: 'Dojo Bali', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597275896/canggu2.jpg', description: 'Great space with lots of good companies', reviews: 'Blah said that it was of dubious repute but boasted great views', companies: 'GetYourGuide have their offices in here', website_url: 'https://www.dojobali.org/'

CoworkingSpace.create! name: 'Betahaus Berlin', image: 'https://res.cloudinary.com/dgqqw6hwo/image/upload/v1597275896/canggu2.jpg', description: 'Cold and unwelcoming', reviews: 'Blah said that it was of dubious repute but boasted great views', companies: 'GetYourGuide have their offices in here', website_url: 'https://www.dojobali.org/'

puts "Created  #{ CoworkingSpace.count } coworking spaces"

