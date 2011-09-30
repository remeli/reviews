class PhotosController < ApplicationController

  #filters:
    
  before_filter :load_company, :only => [:destroy]
  before_filter :load_user, :only => [:destroy]
  
  
  def index
    
  end
  
  def show
    
  end
  
  def destroy
    @photo = company.photos.find(params[:id])
    @photo.destroy
    redirect_to(@company)
  end
  
  private
  
    def load_company
      @company = Company.find_by_permalink(params[:company_id])
    end
    
    def load_user
      @user = current_user
    end
end
