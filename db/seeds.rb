# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Tom", last_name: "MacLean")
Student.create(first_name: "Megan", last_name: "Doherty")

SchoolClass.create(title: "How 2 Code", room_number: "101")
SchoolClass.create(title: "How 2 Code 2", room_number: "201")
SchoolClass.create(title: "Rails and Other Fails", room_number: "201")
