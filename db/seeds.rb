# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning up database..'
# User.destroy_all
# Service.destroy_all
# Review.destroy_all

puts 'Creating Users..'
User.create!(first_name:'Yuhri', last_name:'Parada', email:'yuhriparada@hotmail.com', password:'abc123', phone_num: 9999-9999, bio: 'Hey', location: 'Rio de Janeiro')
User.create!(first_name:'Juliana', last_name:'Arrighi', email:'jarrighi@poli.ufrj.br', password:'abc123', phone_num: 9999-9999, bio: 'Hey', location: 'Rio de Janeiro')
User.create!(first_name:'Justin', last_name:'Knox', email:'techbiotic@icloud.com', password:'abc123', phone_num: 9999-9999, bio: 'Hey', location: 'Rio de Janeiro')
puts 'All Done !'