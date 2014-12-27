class Dorm < ActiveRecord::Base
  has_many :residents, class_name: "Student", foreign_key: "dorm_id"
end
