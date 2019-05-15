require 'faker'

Restaurant.destroy_all

puts 'all restaurants deleted'
categories = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do
  Restaurant.create!(name: Faker::Restaurant.name,
                     address: Faker::Address.street_address,
                     category: categories.sample)
end
puts '5 restaurants created'
