class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_cities_menu
  
  def load_cities_menu
    @cities_menu = City.limit(10)
  end

end
