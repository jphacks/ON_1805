# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
lab = Array.new()
# 15.times do
#   lab << Faker::Japanese::Name.last_name # https://github.com/tily/ruby-faker-japanese
# end

lab = ["美墨","雪城","九条","日向","美翔","夢原","夏木","春日野","秋元","水無月","美々野","桃園","蒼乃","山吹","東"]

59.times do |n|
  email = Faker::Internet.email
  gpa = format("%.2f",rand(0.0..3.9))
  password = "password"
  User.create!(id: n+1,
               ie_number: "0057#{sprintf("%02d",n+1)}",
               email: email,
               gpa: gpa,
               lab: lab.sample,
               password: password,
               password_confirmation: password,
               )
end