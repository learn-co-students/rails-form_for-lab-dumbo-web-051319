# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Atticus", last_name: "Finch")
Student.create(first_name: "Hello", last_name: "Bud")
Student.create(first_name: "Cable", last_name: "Blue")

SchoolClass.create(title: "Math", room_number: 6 )
SchoolClass.create(title: "CS", room_number: 1 )
SchoolClass.create(title: "English", room_number: 26 )
