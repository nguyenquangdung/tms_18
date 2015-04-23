# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "Supervisor", email: "supervisor@gmail.com", password: "123456", password_confirmation: "123456", role: "supervisor", full_name: "supervisor",date_of_birth: "1993-04-16") 


user_list = [
["Nguyen Van M","nguyenvanM@gmail.com","123456","123456","M","11-11-1111"],
["Nguyen Van N","nguyenvanN@gmail.com","123456","123456","N","11-11-1111"],
["Nguyen Van D","nguyenvand@gmail.com","123456","123456","D","11-11-1111"],
["Nguyen Van E","nguyenvane@gmail.com","123456","123456","E","11-11-1111"]
]
user_list.each do |user|
  User.create( :full_name=>user[0], :email=>user[1], :password=>user[2], :password_confirmation=>user[3], role: "user", :name=>user[4], :date_of_birth=>user[5])
end

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  full_name= Faker::Name.name
  role="user"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               full_name: full_name,
               role: role)
end