class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_title
  include SessionsHelper

  def set_title
    @title = "Screw Date"
  end
end
