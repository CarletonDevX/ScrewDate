class AddMajorTable < ActiveRecord::Migration
  def change
    # add majors table
    create_table :majors do |t|
      t.string :major_name, :unique => true
    end

    # add link table
    create_table :majors_students, id: false do |t|
      t.belongs_to :student, index: true
      t.belongs_to :major, index: true
    end

    # modify data for student
    Student.all.each do |student|
      major_string = student.major
      major_list = major_string.split(" / ")
      major_list.each do |major|
        if Major.where(["major_name = ?", major]).length == 0
          Major.create(major_name: major)
        end
        student.majors << Major.where(["major_name = ?", major])
        student.save
      end
    end

    # drop previous major column from DB
    remove_column :students, :major

  end
end
