class ReviewsController < ApplicationController
  
  before_filter :load_company

  # todo: нельзя добавлять комментарии не зарегистрированным/залогонившимся
  
  def create
    @review = @company.reviews.new(params[:review])
    if @review.save
      respond_to do |format|
        format.html { redirect_to @company, :notice => "Отзыв успешно добавлен" }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @company, :alert => "Отзыв не добавлен" }
        format.js
      end
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
