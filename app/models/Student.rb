class Student < ActiveRecord::Base
  belongs_to :proxy, class_name: "Student", foreign_key: "proxy_id"
  has_many :proxy_for, class_name: "Student", foreign_key: "proxy_id"
  belongs_to :date_requestor, class_name: "Student", foreign_key: "date_id"
  has_many :date_requested, class_name: "Student", foreign_key: "date_id"
  has_and_belongs_to_many :majors
end
