# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Creating restaurants...'
restaurants = [
  { name: 'Dragon Palace', address: '123 Main St, Chinatown', category: 'chinese', phone_number: '123-456-7890' },
  { name: 'Luigis Pasta House', address: '456 Elm St, Little Italy', category: 'italian', phone_number: '234-567-8901' },
  { name: 'Sakura Sushi', address: '789 Oak St, Japan Town', category: 'japanese', phone_number: '345-678-9012' },
  { name: 'Le Gourmet Bistro', address: '101 Maple St, French Quarter', category: 'french', phone_number: '456-789-0123' },
  { name: 'Brussels Sprout', address: '202 Pine St, Belgian Village', category: 'belgian', phone_number: '567-890-1234' }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts 'Finished creating restaurants!'
