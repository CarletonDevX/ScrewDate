class SearchController < ApplicationController
  def index
    # this needs serious reworking to deal with double majors
    # or we can store majors as a many to one relationship with students
    # need to think it over more
    @majors = Student.order(:major).uniq.pluck(:major)
    @dorms = Student.order(:dorm_name).uniq.pluck(:dorm_name)
    @years = Student.order(:class_year).uniq.pluck(:class_year)
    @floors = Student.uniq.order(:dorm_floor)
      .where('dorm_floor != ?', -1).pluck(:dorm_floor)

  end
end
