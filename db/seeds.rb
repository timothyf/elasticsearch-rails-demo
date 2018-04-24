# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.__elasticsearch__.create_index!(force: true)


Company.create!(name: 'ConnectSpace')
Company.create!(name: 'Connect Space')
Company.create!(name: 'General Motors')
Company.create!(name: 'General Motors Inc')
Company.create!(name: 'Conect Space')
Company.create!(name: 'Star Bucks')
Company.create!(name: 'Starbucks')
Company.create!(name: 'The Starbucks Corp')
Company.create!(name: 'Starbux')
Company.create!(name: 'Ford')
Company.create!(name: 'Amazon')
Company.create!(name: 'Apple')
Company.create!(name: 'Google')
