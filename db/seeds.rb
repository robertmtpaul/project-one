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

puts "Created  #{ User.count } users"


