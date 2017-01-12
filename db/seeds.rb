# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Show.destroy_all

show_1 = Show.create(title: "lost", imdb:"ttfrk345")
show_2 = Show.create(title: "24", imdb:"lollmfao2")
show_3 = Show.create(title: "real husbands of hollywood", imdb:"lollmfao2")

user_1 = User.create(email:"david@yahoo.com", username:"david1", firstname:"david", lastname:"green", password:"password")
user_2 = User.create(email:"angela@yahoo.com", username:"angela1", firstname:"angela", lastname:"davis", password:"password")
user_3 = User.create(email:"jake@yahoo.com", username:"jake1", firstname:"jake", lastname:"williams", password:"password")

user_show_1 = UserShow.create(user: user_1, show: show_1)
user_show_2 = UserShow.create(user: user_1, show: show_3)
user_show_3 = UserShow.create(user: user_2, show: show_1)
user_show_4 = UserShow.create(user: user_2, show: show_2)
user_show_5 = UserShow.create(user: user_3, show: show_1)
user_show_6 = UserShow.create(user: user_3, show: show_3)

