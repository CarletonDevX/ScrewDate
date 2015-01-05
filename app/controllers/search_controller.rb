class SearchController < ApplicationController
  def index
    if request.query_parameters.length != 0
      @studentsResults = Student.all
    end
    @majors = Major.order(:major_name)
    @dorms = Dorm.order(:dorm_name)
    @years = Student.order(:class_year)
    @floors = Student.uniq.order(:dorm_floor)
      .where('dorm_floor != ?', -1)
  end
end
