
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning up database..'
Service.destroy_all
User.destroy_all

# Review.destroy_all

puts 'Creating Users..'

15.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_num: Faker::PhoneNumber.phone_number,
    bio: Faker::Lorem.paragraph,
    location: Faker::Address.street_address,
    password: "123456"
    )

    3.times do
      service = Service.new(
        brand: Faker::Vehicle.manufacture,
        part: "Engine block",
        description: "These is the text field for the database",
        level: "easy",
        video_url: "https://source.unsplash.com/random",
        thumbnail: "http://img.youtube.com/vi/d9WwSWk0zGI/hqdefault.jpg"
      )
      service.user = user
      service.save!
    end
end

puts 'All Done !'

User.create!(first_name:'Yuhri', last_name:'Parada', email:'yuhriparada@hotmail.com', password:'abc123', phone_num: 9999-9999, bio: 'Hey', location: 'Rio de Janeiro')
ju = User.create!(first_name:'Juliana', last_name:'Arrighi', email:'jarrighi@poli.ufrj.br', password:'abc123', phone_num: 9999-9999, bio: 'Hey', location: 'Rio de Janeiro')
User.create!(first_name:'Justin', last_name:'Knox', email:'techbiotic@icloud.com', password:'abc123', phone_num: 9999-9999, bio: 'Hey', location: 'Rio de Janeiro')
puts 'All Done !'


service1 = Service.new(brand: "Cool boat brand", part: "Engine block", description: "These is the text field for the database", level: "easy", video_url: "http://youtube.com")
service1.user = ju
service1.save!
puts "worked!"
