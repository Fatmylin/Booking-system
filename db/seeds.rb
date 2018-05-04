# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |num|
  Task.create content: "這是測試資料 #{ num + 1 }"
end

roomA = ["http://i.imgur.com/DacslGO.jpg","http://i.imgur.com/0AB2ELc.jpg","http://i.imgur.com/TPQUjWU.jpg"]
roomB = ["http://i.imgur.com/bwoVNcd.jpg","http://i.imgur.com/VLXsTra.jpg","http://i.imgur.com/4mjKvcC.jpg"]
roomC = ["http://i.imgur.com/RiEQZlg.jpg","http://i.imgur.com/GZb0Xw5.jpg","http://i.imgur.com/cLjr21J.jpg"]

3.times do |room|
	Room.create name:"時尚雙人套房A#{room+1}",price:1600,image_url:"#{roomA[room]}",number_of_people:2
	Room.create name:"浪漫雙人套房B#{room+1}",price:2000,image_url:"#{roomB[room]}",number_of_people:2
	Room.create name:"親子四人套房C#{room+1}",price:2800,image_url:"#{roomC[room]}",number_of_people:4
end

Room.create name:"微笑雙人套房",price:2200,image_url:"http://i.imgur.com/jEGHQV4.jpg",number_of_people:2

