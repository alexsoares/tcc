class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  API_KEY = "AIzaSyAJmHMNL_ElGdY9YguNoZOS0qw-uYfz_fY"
  protect_from_forgery with: :exception

end
