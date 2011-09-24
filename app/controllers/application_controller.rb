class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_cities_menu
  
  def load_cities_menu
    @cities_menu = City.limit(9)
  end
  
  
  # filter method if user not signed
  def user_have
    unless current_user
      redirect_to root_path, :alert => "Зарегистрируйтесь или войдите"
    end
  end

end
