# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
puts "Seeding data to the database ...."


## run for the first time
# AdminUser.destroy_all
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
# Book.destroy_all
# Client.destroy_all 

50.times do
    @book= Book.create!(
        author: Faker::Name.unique.name_with_middle,
        price: Faker::Commerce.price(range: 0..10.0),
        title: Faker::Book.title
    )
end

50.times do
    @client = Client.create!(
        name: Faker::Name.unique.name_with_middle,
        address: Faker::Address.unique.street_address,
        company: Faker::Company.unique.name,
        phone_number: Faker::PhoneNumber.unique.cell_phone_with_country_code,
        ) 
    end

50.times do 
    @feed= Feed.create!(
        title: Faker::Book.title,
        author: Faker::Name.unique.name_with_middle,
        content: Faker::Music.album,
        img_url: Faker::Avatar.image
    )
end

puts "Seeding operation complete !"