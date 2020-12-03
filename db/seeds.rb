# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

counter = 0

while counter < 30 do
    nW = Newsletter.create(issue: Faker::Time.backward(days: 14, period: :evening))
    nW.create_logo(link: Faker::Internet.url)
    nW.create_headline(content: Faker::Lorem.sentence)
    nW.create_body(content: Faker::Lorem.paragraphs(number: 15))
    nW.create_social(twitter: Faker::Internet.url, instagram: Faker::Internet.url, youtube: Faker::Internet.url)
    Audeince.create(email: Faker::Internet.email)
    counter += 1
end
 
test = Newsletter.create(issue: Time.now)