# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
if Student.all.length == 0
  CSV.foreach('../stalkernet_data.csv', :headers => false) do |row|
    Student.create(student_name: row[0], major: row[1], class_year: row[2],
      dorm_name: row[3], dorm_floor: row[4], dorm_room_number: row[5],
      student_email: row[6])
  end
end
