# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   [
#     { name: "Star Wars" },
#     { name: "Lord of the Rings" }
#   ].each do |movie|
#     Movie.find_or_create_by!(movie)
#   end

# Load seeds from db/seeds/*.rb

puts "Loading seeds from db/seeds/"
Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |seed_file|
  puts "  Loading #{File.basename(seed_file)}"
  load seed_file
end

puts "Finished loading seeds."
