class ChangeColumnNames < ActiveRecord::Migration
  def self.up
    rename_column :students, :studentName, :student_name
    rename_column :students, :dormName, :dorm_name
    rename_column :students, :dormFloor, :dorm_floor
    rename_column :students, :dormRoomNumber, :dorm_room_number
    rename_column :students, :studentEmail, :student_email
    rename_column :students, :proxyEmail, :proxy_email
    rename_column :students, :classYear, :class_year
  end

  def self.down
    rename_column :students, :student_name, :studentName
    rename_column :students, :dorm_name, :dormName
    rename_column :students, :dorm_floor, :dormFloor
    rename_column :students, :dorm_room_number, :dormRoomNumber
    rename_column :students, :student_email, :studentEmail
    rename_column :students, :proxy_email, :proxyEmail
    rename_column :students, :class_year, :classYear
  end
end
