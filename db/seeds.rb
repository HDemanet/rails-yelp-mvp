# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurants = [
  { name: "Chez Pierre", address: "10 Rue de la République, Paris", category: "french" },
  { name: "Sushi World", address: "20 Rue de l'Asie, Paris", category: "japanese" },
  { name: "La Bella Italia", address: "30 Via Roma, Milan", category: "italian" },
  { name: "Le Palais de la Chine", address: "5 Rue des Dragons, Paris", category: "chinese" },
  { name: "Brasserie Belge", address: "50 Avenue des Flandres, Bruxelles", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.find_or_create_by!(restaurant)
end

puts "Restaurants have been seeded!"
