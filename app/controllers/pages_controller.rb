class PagesController < ApplicationController
  
  before_filter :load_categories
  
  def index
    @title = "Компании, отзывы"
  end
  
  def load_categories
    @categories = Category.all
  end
end
