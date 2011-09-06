class ReviewsController < ApplicationController
  
  before_filter :load_company

  
  def create
    @review = @company.reviews.new(params[:review])
    if @review.save
      redirect_to @company, :notice => "Отзыв успешно добавлен"
    else
      redirect_to @company, :alert => "Отзыв не добавлен"
    end
  end
  
  def destroy
    @review = @company.reviews.find(params[:id])
    @review.destroy
    redirect_to(@company, :notice => "Комментарий удален")
  end
  
  private
    def load_company
      @company = Company.find_by_permalink(params[:company_id])
    end
    
end
