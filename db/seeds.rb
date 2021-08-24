puts "🌱 Clearing seeds..."
Cart.destroy_all
Part.destroy_all
User.destroy_all


# Seed your database here
puts "🌱 Seeding Parts..."

10.times do
item_name = ["Headlight", "Rims", "Tires", "Mirror"]
make = ["Honda", "BMW", "Lexus", "Chevy"]
model = ["Civic", "328i", "LFA", "Duramax"]
year = rand(2000..2020)
price = rand(30..100)


Part.create(item_name: item_name.sample, make: make.sample, model: model.sample, price: price, year: year )
end

puts "🌱 Seeding User..."
User.create(name: "Aaron")
# User.create(name: "Lantz")
# User.create(name: "John")
# User.create(name: "Trevor")
# User.create(name: "Obi")


puts "🌱 Seeding Cart..."

Cart.create(user_id: User.ids.sample, part_id: Part.ids.sample)
# Cart.create(user_id: user.sample, part_id: part.sample,)
# Cart.create(user_id: user.sample, part_id: part.sample,)
# Cart.create(user_id: user.sample, part_id: part.sample,)
# Cart.create(user_id: user.sample, part_id: part.sample,)









puts "✅ Done seeding!"
