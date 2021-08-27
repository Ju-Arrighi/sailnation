
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
Review.destroy_all

iterator = 0
# id's :
id_seeds = [
'0olfMv3jc9k',
'EnbTuGFP57w',
'79U82JlE0Wg',
'ME8zEvNgYF8',
'T2tz4uTwiQk',
'c29MtfzpMKw',
'LRvzpP1aPTQ',
'eNNCN3wMYDc',
'vv8fgaPeETM',
'sCmJCxS9xB0',
'iT8X29TVYUQ',
'BntFCE3TI0E',
'_73znzabyKw',
'NWGxRXOL6c0',
'cc5AYip-XoM',
'Vshkz2Vntl0',
'c_HJ20bvPLU',
'pflWBCl4sW0',
's9VlmiDTv2o',
'piSd02dcgfg',
'ioKXKw2HW_Q',
'3CcE_Jroxz8',
'V9uzQfZ8g3w',
'i__lK14KO7A',
'zIS01KsA8rg',
'95ctXTFU6K0',
'WMWVB1dnmsk',
'M8X_8keQm5E',
'fbMWsTijWWA',
'qsRMk4SrJDQ',
'o6a-0OEwPFc',
'YP-644r5qMw',
'WEGw1hwYzcA',
'31t-EwtHPWg',
'CT5cXvehkGY',
'STXKZEt0Jis',
'g6UjfLsjZiw',
'Gde7T7ovxtY',
'ulBZYwvEAHA',
'V4487kgFoi8',
'vntcoTF139o',
'WpXBctRKghI',
'p-UCRlstylE',
'Y5fmhGxmT_I',
'6ldxnbP1B7c',
'ZF0PonhUlcQ',
'7xNn5dcjHjQ',
'ls9Ff0hCOec',
'5iGNFowFuMs',
'nEFrB2X-S_g',
'o_CVpeKIgCM',
'TqzO8GxXy2g',
'vGl0Q7LV1mo',
'EYrOSaQhyWQ',
'8VNbTkVZ5H0',
'bCgfc2uSP2A',
'J5IouwQEIag',
'DOB7adKAbD0',
'MqJJ6HVgU3A',
'0olfMv3jc9k',
'EnbTuGFP57w',
'79U82JlE0Wg',
'ME8zEvNgYF8',
'T2tz4uTwiQk',
'c29MtfzpMKw',
'LRvzpP1aPTQ',
'eNNCN3wMYDc',
'vv8fgaPeETM',
'sCmJCxS9xB0',
'iT8X29TVYUQ',
'BntFCE3TI0E',
'_73znzabyKw',
'NWGxRXOL6c0',
'cc5AYip-XoM',
'Vshkz2Vntl0',
'c_HJ20bvPLU',
'pflWBCl4sW0',
's9VlmiDTv2o',
'piSd02dcgfg',
'a_ZLDoC96-g',
'q1GGpwaMQLQ',
'NfczFh9Y7wY',
'r0jJW3dc428',
'ffMzpL2Mbh4',
'4eluuer5Xdg',
'3wpOYtq2oHU',
'RhJLB9OzQGA',
'aT5zVGnGgsw',
'3b_ETgglbqo',
'mMx_tvAT_9I',
'xienU7fr5aM',
'IHPvy5q3Ew4',
'2Tc9N6bQW-U',
'Hb-no7JdtrM',
'5MeyVoEXT84',
'1cX06hzw8_M',
'O2UIhyhvhbs',
'Qpj5stR_E2g',
'gdjniFuTHh8'
]

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
    puts "Creating Services..."
    3.times do
      service = Service.new(
        brand: Faker::Vehicle.manufacture,
        part: Faker::Appliance.equipment,
        description: Faker::Hipster.sentence,
        level: "easy",
        video_url: "https://source.unsplash.com/random",
        thumbnail: "http://img.youtube.com/vi/#{id_seeds[iterator]}/hqdefault.jpg"
      )
      puts "seeded url img for #{id_seeds[iterator]}"
      iterator += 1
      service.user = user
      service.save!

      puts "Creating Reviews..."
      6.times do
        review = Review.new(
          content: Faker::ChuckNorris.fact,
          stars: 5
        )
        review.user = user
        review.service = service
        review.save!
      end
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



# review seeds

# review seeds


# full links
# <a href="https://www.youtube.com/watch?v=0olfMv3jc9k">
# <a href="https://www.youtube.com/watch?v=EnbTuGFP57w">
# <a href="https://www.youtube.com/watch?v=79U82JlE0Wg">
# <a href="https://www.youtube.com/watch?v=ME8zEvNgYF8">
# <a href="https://www.youtube.com/watch?v=T2tz4uTwiQk">
# <a href="https://www.youtube.com/watch?v=c29MtfzpMKw">
# <a href="https://www.youtube.com/watch?v=LRvzpP1aPTQ">
# <a href="https://www.youtube.com/watch?v=eNNCN3wMYDc">
# <a href="https://www.youtube.com/watch?v=vv8fgaPeETM">
# <a href="https://www.youtube.com/watch?v=sCmJCxS9xB0">
# <a href="https://www.youtube.com/watch?v=iT8X29TVYUQ">
# <a href="https://www.youtube.com/watch?v=BntFCE3TI0E">
# <a href="https://www.youtube.com/watch?v=_73znzabyKw">
# <a href="https://www.youtube.com/watch?v=NWGxRXOL6c0">
# <a href="https://www.youtube.com/watch?v=cc5AYip-XoM">
# <a href="https://www.youtube.com/watch?v=Vshkz2Vntl0">
# <a href="https://www.youtube.com/watch?v=c_HJ20bvPLU">
# <a href="https://www.youtube.com/watch?v=pflWBCl4sW0">
# <a href="https://www.youtube.com/watch?v=s9VlmiDTv2o">
# <a href="https://www.youtube.com/watch?v=piSd02dcgfg">
# <a href="https://www.youtube.com/watch?v=ioKXKw2HW_Q">
# <a href="https://www.youtube.com/watch?v=3CcE_Jroxz8">
# <a href="https://www.youtube.com/watch?v=V9uzQfZ8g3w">
# <a href="https://www.youtube.com/watch?v=i__lK14KO7A">
# <a href="https://www.youtube.com/watch?v=zIS01KsA8rg">
# <a href="https://www.youtube.com/watch?v=95ctXTFU6K0">
# <a href="https://www.youtube.com/watch?v=WMWVB1dnmsk">
# <a href="https://www.youtube.com/watch?v=M8X_8keQm5E">
# <a href="https://www.youtube.com/watch?v=fbMWsTijWWA">
# <a href="https://www.youtube.com/watch?v=qsRMk4SrJDQ">
# <a href="https://www.youtube.com/watch?v=o6a-0OEwPFc">
# <a href="https://www.youtube.com/watch?v=YP-644r5qMw">
# <a href="https://www.youtube.com/watch?v=WEGw1hwYzcA">
# <a href="https://www.youtube.com/watch?v=31t-EwtHPWg">
# <a href="https://www.youtube.com/watch?v=CT5cXvehkGY">
# <a href="https://www.youtube.com/watch?v=STXKZEt0Jis">
# <a href="https://www.youtube.com/watch?v=g6UjfLsjZiw">
# <a href="https://www.youtube.com/watch?v=Gde7T7ovxtY">
# <a href="https://www.youtube.com/watch?v=ulBZYwvEAHA">
# <a href="https://www.youtube.com/watch?v=V4487kgFoi8">
# <a href="https://www.youtube.com/watch?v=vntcoTF139o">
# <a href="https://www.youtube.com/watch?v=WpXBctRKghI">
# <a href="https://www.youtube.com/watch?v=p-UCRlstylE">
# <a href="https://www.youtube.com/watch?v=Y5fmhGxmT_I">
# <a href="https://www.youtube.com/watch?v=6ldxnbP1B7c">
# <a href="https://www.youtube.com/watch?v=ZF0PonhUlcQ">
# <a href="https://www.youtube.com/watch?v=7xNn5dcjHjQ">
# <a href="https://www.youtube.com/watch?v=ls9Ff0hCOec">
# <a href="https://www.youtube.com/watch?v=5iGNFowFuMs">
# <a href="https://www.youtube.com/watch?v=nEFrB2X-S_g">
# <a href="https://www.youtube.com/watch?v=o_CVpeKIgCM">
# <a href="https://www.youtube.com/watch?v=TqzO8GxXy2g">
# <a href="https://www.youtube.com/watch?v=vGl0Q7LV1mo">
# <a href="https://www.youtube.com/watch?v=EYrOSaQhyWQ">
# <a href="https://www.youtube.com/watch?v=8VNbTkVZ5H0">
# <a href="https://www.youtube.com/watch?v=bCgfc2uSP2A">
# <a href="https://www.youtube.com/watch?v=J5IouwQEIag">
# <a href="https://www.youtube.com/watch?v=DOB7adKAbD0">
# <a href="https://www.youtube.com/watch?v=MqJJ6HVgU3A">
# <a href="https://www.youtube.com/watch?v=0olfMv3jc9k">
# <a href="https://www.youtube.com/watch?v=EnbTuGFP57w">
# <a href="https://www.youtube.com/watch?v=79U82JlE0Wg">
# <a href="https://www.youtube.com/watch?v=ME8zEvNgYF8">
# <a href="https://www.youtube.com/watch?v=T2tz4uTwiQk">
# <a href="https://www.youtube.com/watch?v=c29MtfzpMKw">
# <a href="https://www.youtube.com/watch?v=LRvzpP1aPTQ">
# <a href="https://www.youtube.com/watch?v=eNNCN3wMYDc">
# <a href="https://www.youtube.com/watch?v=vv8fgaPeETM">
# <a href="https://www.youtube.com/watch?v=sCmJCxS9xB0">
# <a href="https://www.youtube.com/watch?v=iT8X29TVYUQ">
# <a href="https://www.youtube.com/watch?v=BntFCE3TI0E">
# <a href="https://www.youtube.com/watch?v=_73znzabyKw">
# <a href="https://www.youtube.com/watch?v=NWGxRXOL6c0">
# <a href="https://www.youtube.com/watch?v=cc5AYip-XoM">
# <a href="https://www.youtube.com/watch?v=Vshkz2Vntl0">
# <a href="https://www.youtube.com/watch?v=c_HJ20bvPLU">
# <a href="https://www.youtube.com/watch?v=pflWBCl4sW0">
# <a href="https://www.youtube.com/watch?v=s9VlmiDTv2o">
# <a href="https://www.youtube.com/watch?v=piSd02dcgfg">
# <a href="https://www.youtube.com/watch?v=a_ZLDoC96-g">
# <a href="https://www.youtube.com/watch?v=q1GGpwaMQLQ">
# <a href="https://www.youtube.com/watch?v=NfczFh9Y7wY">
# <a href="https://www.youtube.com/watch?v=r0jJW3dc428">
# <a href="https://www.youtube.com/watch?v=ffMzpL2Mbh4">
# <a href="https://www.youtube.com/watch?v=4eluuer5Xdg">
# <a href="https://www.youtube.com/watch?v=3wpOYtq2oHU">
# <a href="https://www.youtube.com/watch?v=RhJLB9OzQGA">
# <a href="https://www.youtube.com/watch?v=aT5zVGnGgsw">
# <a href="https://www.youtube.com/watch?v=3b_ETgglbqo">
# <a href="https://www.youtube.com/watch?v=mMx_tvAT_9I">
# <a href="https://www.youtube.com/watch?v=xienU7fr5aM">
# <a href="https://www.youtube.com/watch?v=IHPvy5q3Ew4">
# <a href="https://www.youtube.com/watch?v=2Tc9N6bQW-U">
# <a href="https://www.youtube.com/watch?v=Hb-no7JdtrM">
# <a href="https://www.youtube.com/watch?v=5MeyVoEXT84">
# <a href="https://www.youtube.com/watch?v=1cX06hzw8_M">
# <a href="https://www.youtube.com/watch?v=O2UIhyhvhbs">
# <a href="https://www.youtube.com/watch?v=Qpj5stR_E2g">
# <a href="https://www.youtube.com/watch?v=gdjniFuTHh8">
