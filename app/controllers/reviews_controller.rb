class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end
    
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(params[:review])
  end
  
  def destroy
    @review = Review.find(params[:id])
    @company = Company.find(@review.company_id)
    @review.destroy
    redirect_to(@company, :notice => "Комментарий удален")
  end
  
end
