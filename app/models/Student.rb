class Student < ActiveRecord::Base
  belongs_to :proxy, class_name: "Student", foreign_key: "proxy_id"
  has_many :proxy_for, class_name: "Student", foreign_key: "proxy_id"

end
