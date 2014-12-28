class SearchController < ApplicationController
  def index
    @majors = Major.order(:major_name)
    @dorms = Dorm.order(:dorm_name)
    @years = Student.order(:class_year).uniq.pluck(:class_year)
    @floors = Student.uniq.order(:dorm_floor)
      .where('dorm_floor != ?', -1).pluck(:dorm_floor)
  end
end
