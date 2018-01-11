# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Studio.destroy_all
Course.destroy_all

hugo = User.create!(email: "hugo@test.com", first_name: "Hugo", last_name: "Testa", password: "123456" )
paco = User.create!(email: "paco@test.com", first_name: "Paco", last_name: "Testb", password: "123456" )
luis = User.create!(email: "luis@test.com", first_name: "Luis", last_name: "Testc", password: "123456" )
