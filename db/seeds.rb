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

City.create! name: 'Berlin', rank: 3, mercer: '2020: ranked 9th', image1: 'http://place-puppy.com/200x200', image2: 'http://place-puppy.com/200x200', internet_speed: 'pretty good', startups: '200'

City.create! name: 'Canggu', rank: 1, mercer: '2020: ranked 400', image1: 'http://place-puppy.com/200x200', image2: 'http://place-puppy.com/200x200', internet_speed: 'really good', startups: '4'

puts "Created  #{ City.count } cities"

