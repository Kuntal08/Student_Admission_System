# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{
  name: 'Kuntal Majee',
  email: 'kuntal.majee@gmail.com',
  password: 'qwerty',
  password_confirmation: 'qwerty',
  admin: true
  }])

Board.create([{
  board: 'WBBSE',
  full_form: 'West Bengal Board of Secondary Education',
  description: Faker::Lorem.paragraph
  }])

Board.create([{
  board: 'ICSE',
  full_form: 'Indian Certificate of Secondary Education',
  description: Faker::Lorem.paragraph
  }])

Division.create([{
  division: '1st',
  stage: 'Primary Stage',
  description:  Faker::Lorem.paragraph
  }])

Division.create([{
  division: '11th',
  stage: 'Senior Secondary Stage',
  description: Faker::Lorem.paragraph
  }])

2.times do
Location.create([{
  city_name: Faker::Address.city,
  country_name: 'India',#Faker::Address.country,
  pin: 356548#Faker::Address.zip_code
  }])
end
