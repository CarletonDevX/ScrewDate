class SearchController < ApplicationController
  def index
    if request.query_parameters.length != 0
      p = request.query_parameters
      @studentsResults = Student.search(p[:student_name], p[:class_year], p[:dorm_id], p[:major])
    end
    @majors = Major.order(:major_name)
    @dorms = Dorm.order(:dorm_name)
    @years = Student.order(:class_year)
    @floors = Student.uniq.order(:dorm_floor)
      .where('dorm_floor != ?', -1)
  end
end
