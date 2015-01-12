class Student < ActiveRecord::Base
  belongs_to :proxy, class_name: "Student", foreign_key: "proxy_id"
  has_many :proxy_for, class_name: "Student", foreign_key: "proxy_id"
  belongs_to :date_requestor, class_name: "Student", foreign_key: "date_id"
  has_many :date_requested, class_name: "Student", foreign_key: "date_id"
  has_and_belongs_to_many :majors
  belongs_to :dorm, class_name: "Dorm", foreign_key: "dorm_id"

  def self.search(student_name, class_year, dorm_id, major_id)
    students = self.all

    if student_name.present?
      students = students.where("student_name LIKE ?", "%#{student_name}%")
    end

    if class_year.present?
      students = students.where("class_year = ?", class_year)
    end

    if dorm_id.present?
      students = students.where("dorm_id = ?", dorm_id)
    end

    if major_id.present?
      students = students.joins(:majors).where(:majors => {id: major_id})
    end

    # make sure that shown students are available, have a proxy
    # and don't yet have a date
    return students.where(:available => true).where(:taken => false).where.not(:proxy => null)

  end

end
