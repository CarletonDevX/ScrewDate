class SearchController < ApplicationController
  def index
    # this needs serious reworking to deal with double majors
    # or we can store majors as a many to one relationship with students
    # need to think it over more
    @majors = Student.uniq.pluck(:major)
    @dorms = Student.uniq.pluck(:dormName)
    @years = Student.uniq.pluck(:classYear)
    @floors = Student.uniq.pluck(:dormFloor)

  end
end
