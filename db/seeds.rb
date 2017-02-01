# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Show.destroy_all
UserShow.destroy_all

show_1 = Show.create(title: "lost", poster:"lost.jpg", imdb:"ttfrk345", lgposter:"lost_lrgposter.jpg", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")
show_2 = Show.create(title: "24", poster:"24poster.jpg", imdb:"lollmfao2", lgposter: "24_lrgposter.jpg", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")
show_3 = Show.create(title: "real husbands of hollywood", poster:"rhh.jpg", imdb:"lollmfao2", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")
show_4 = Show.create(title: "3%", poster:"3per.jpg", imdb:"ppf454e3", lgposter: "3per_lrgposter.jpg", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")
show_5 = Show.create(title: "game of thrones", poster:"got.jpg", imdb:"ppf55667", lgposter:"got_lrgposter.jpg", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")
show_6 = Show.create(title: "the legend of korra", poster:"korra.jpg", imdb:"ppfrer343", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")
show_7 = Show.create(title: "mr.robot", poster:"robot.jpg", imdb:"ppf44544", lgposter:"robot_lrgposter.jpg", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")
show_8 = Show.create(title: "the silicon valley", poster:"siliconv.jpg", imdb:"ppf8989", lgposter:"silicon_lrgposter.jpg", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")
show_9 = Show.create(title: "the IT crown", poster:"itcrowd.jpg", imdb:"ppf87hu88", lgposter:"itcrowd_lrgposter.jpg", summary:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed urna mauris. Vestibulum interdum egestas nulla, eget aliquet eros fringilla sit amet. Sed tincidunt malesuada orci, vitae scelerisque ipsum mollis in. Duis tristique lorem vel ligula aliquam, vitae varius est eleifend. Integer tempus sem felis, ac blandit purus rutrum sed.")

user_1 = User.create(email:"david@yahoo.com", username:"david1", firstname:"david", lastname:"green", password:"password")
user_2 = User.create(email:"angela@yahoo.com", username:"angela1", firstname:"angela", lastname:"davis", password:"password")
user_3 = User.create(email:"jake@yahoo.com", username:"jake1", firstname:"jake", lastname:"williams", password:"password")

user_show_1 = UserShow.create(user: user_1, show: show_4)
user_show_2 = UserShow.create(user: user_1, show: show_5)
user_show_3 = UserShow.create(user: user_1, show: show_7)
user_show_4 = UserShow.create(user: user_1, show: show_8)
user_show_5 = UserShow.create(user: user_1, show: show_9)

user_show_6 = UserShow.create(user: user_2, show: show_3)
user_show_7 = UserShow.create(user: user_2, show: show_2)
user_show_8 = UserShow.create(user: user_2, show: show_5)
user_show_9 = UserShow.create(user: user_2, show: show_8)

user_show_10 = UserShow.create(user: user_3, show: show_1)
user_show_11 = UserShow.create(user: user_3, show: show_2)
user_show_12 = UserShow.create(user: user_3, show: show_3)
user_show_13 = UserShow.create(user: user_3, show: show_4)

