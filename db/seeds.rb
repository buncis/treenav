# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
products = Page.create!(name: "Products", content: "Product listing goes here.")
about = Page.create!(name: "About Us", content: "Description of company here.")
support = Page.create!(name: "Support", content: "Support information goes here.")
Page.create!(name: "License Agreement", content: "Content of license agreement.", parent_id: about.id)
Page.create!(name: "Privacy Policy", content: "Content of privacy policy.", parent_id: about.id)
Page.create!(name: "Contact Us", content: "Contact information goes here.", parent_id: about.id)
Page.create!(name: "Product Categories", content: "List of product categories goes here.", parent_id: products.id)
Page.create!(name: "Pricing", content: "Pricing information goes here.", parent_id: products.id)
shipping = Page.create!(name: "Shipping Info", content: "Shipping information goes here.", parent_id: products.id)
Page.create!(name: "International Shipping", content: "International shipping information goes here.", parent_id: shipping.id)
Page.create!(name: "Free Shipping Offer", content: "Free shipping offer goes here.", parent_id: shipping.id)
