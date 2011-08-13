class PagesController < ApplicationController
  before_filter :load_category
  
  def index
    @title = "Компании, отзывы"
  end
  
  def load_category
    @categories = Category.all
  end
end
