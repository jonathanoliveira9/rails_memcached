# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ActiveRecord::Base.transaction do
  100.times do |t|
      puts "Creating Category: #{ 1 + t }:0:0"

    category = Category.create(name: Faker::Name.name)
    10.times do |i|
      puts "Creating Subcategory: #{1 + t }:#{ 1 + i }:0"

      subcategory = category.subcategories.create(name: Faker::Name.name)

      2.times do |j|
        puts "Creating Products: #{1 + t }:#{ 1 + i }:#{1 + j}"

        subcategory.products.create(name: Faker::Name.name, description: Faker::Markdown.emphasis)
      end
    end
  end
end
# 100.times do |t|
#  puts "Creating Product: #{ 1 + t }"
#  Product.create(name: Faker::Name.name, description: Faker::Markdown.emphasis)
# end
