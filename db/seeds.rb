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
    student = Student.create(student_name: row[0], class_year: row[2],
    dorm_floor: row[4], dorm_room_number: row[5], student_email: row[6])
    major_list = row[1].split(" / ")
    major_list.each do |major|
      if Major.where(["major_name = ?", major]).length == 0
        Major.create(major_name: major)
      end
      student.majors << Major.where(["major_name = ?", major])
      student.save
    end
    dorm = row[3]
    if Dorm.where(["dorm_name = ?", dorm]).length == 0
      Dorm.create(dorm_name: dorm)
    end
    student.dorm_id = Dorm.where(["dorm_name = ?", dorm]).first.id
    student.save
  end
end
