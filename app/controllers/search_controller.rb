class SearchController < ApplicationController
  def index
    if request.query_parameters.empty?
      @majors = Major.order(:major_name)
      @dorms = Dorm.order(:dorm_name)
      @years = Student.order(:class_year).uniq.pluck(:class_year)
      @floors = Student.order(:dorm_floor).uniq.pluck(:dorm_floor).reject { |f| f == -1 }
      @title = "Search for a Screwdate"
    else
      @title = "Search for a Screwdate - Results"
      @studentsResults = Student.search(params[:student_name], params[:class_year], params[:dorm_id], params[:major_id])
    end
  end
end
