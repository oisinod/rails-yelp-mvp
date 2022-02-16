# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
ratings = (1..5).to_a

categories = %w[chinese italian japanese french belgian]
5.times do
  @restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: categories.sample
  )

  2.times do
    @review = Review.new(
      content: "Great restaurant!",
      rating: ratings.sample,
      restaurant_id: ratings.sample
    )
    @review.save
  end
  @restaurant.save
end
