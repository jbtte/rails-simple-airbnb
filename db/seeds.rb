# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Erasing current DB 🗑️"
Flat.delete_all
puts "Clean as a whistle 😗"
puts "Now to repopulate it ... 🧰"

4.times do
  new_flat = Flat.create!(
    name: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(70..200),
    number_of_guests: rand(1..6)
  )
end

puts "that's it, now go code the rest 👨‍💻"
