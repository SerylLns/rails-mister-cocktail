Review.destroy_all
Cocktail.destroy_all
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# require 'json'
# require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# user_serialized = open(url).read
# ingredient = JSON.parse(user_serialized)
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# Dose.destroy_all
# Ingredient.destroy_all

# ingredient["drinks"].each do |i|
#   Ingredient.create!(name: i["strIngredient1"])
# end
