class SearchController < ApplicationController
  def index
    unless request.query_parameters.empty?
      @studentsResults = Student.search(params[:student_name], params[:class_year], params[:dorm_id], params[:major_id])
    end
    @majors = Major.order(:major_name)
    @dorms = Dorm.order(:dorm_name)
    @years = Student.order(:class_year)
    @floors = Student.uniq.order(:dorm_floor)
      .where('dorm_floor != ?', -1)
  end
end
