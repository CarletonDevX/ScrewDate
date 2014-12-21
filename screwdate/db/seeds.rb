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
    Student.create(studentName: row[0], major: row[1], classYear: row[2],
      dormName: row[3], dormFloor: row[4], dormRoomNumber: row[5],
      studentEmail: row[6])
  end
end
