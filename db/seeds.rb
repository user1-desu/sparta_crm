# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 100.times do |index|
#   Customer.create( family_name: "エリーツ#{index}", given_name: "新宿#{index}", email: "elites#{index}@elitescamp.com")
# end

Company.create(name: "エリーツ商事", url: "http://spartacamp.jp/", address: "東京都千代田区１−１−１")
Company.create(name: "株式会社ノーウォール", url: "http://nowall.co.jp/", address: "東京都新宿区西新宿6-15-1")
Company.create(name: "ヤフー株式会社", url: "http://www.yahoo.co.jp/", address: "東京都港区赤坂9-7-1")

100.times do |index|
  Customer.create(
    family_name: Faker::Japanese::Name.last_name,
    given_name: Faker::Japanese::Name.first_name,
    email: "customer_#{index}@elitescamp.com",
    company_id: rand(3) + 1
  )
end




