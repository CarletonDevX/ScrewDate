class AddDormTable < ActiveRecord::Migration
  def change
    # add dorms table
    create_table :dorms do |t|
      t.string :dorm_name, :unique => true
    end

    # add dorm_id column to db
    add_column :students, :dorm_id, :integer

    # modify data for student
    Student.all.each do |student|
      dorm = student.dorm_name
      if Dorm.where(["dorm_name = ?", dorm]).length == 0
        Dorm.create(dorm_name: dorm)
      end
      student.dorm_id = Dorm.where(["dorm_name = ?", dorm]).first.id
      student.save
    end

    # drop previous dorm column from DB
    remove_column :students, :dorm_name, :string
  end
end
