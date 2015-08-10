class SearchController < ApplicationController
  def index
    if request.query_parameters.empty?
      @majors = Major.order(:major_name)
      @dorms = Dorm.order(:dorm_name)
      @years = Student.order(:class_year).uniq.pluck(:class_year)
      @floors = Student.order(:dorm_floor).uniq.pluck(:dorm_floor).reject { |f| f == -1 }
      @title = "Search for a Screwdate"
    else
      page = params[:page].try(&:to_i) || 1
      puts "CURRENT PAGE: #{page}"
      limit = 10
      @title = "Search for a Screwdate - Results"
      results = Student.search(params[:student_name], params[:class_year], params[:dorm_id], params[:major_id]).order(:student_name)
      @studentsResults = results.limit(limit).offset((page - 1) * limit)
      @previousPage = get_page(page - 1, params) unless page == 1
      @nextPage = get_page(page + 1, params) unless @studentsResults.last == results.last
    end
  end

  private

  def get_page(page, params)
    params = (params || {}).merge!(page: page)
    "#{search_index_path}?#{params.to_param}"
  end
end
