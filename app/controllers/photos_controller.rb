class PhotosController < ApplicationController

  #filters:
    
  before_filter :load_company, :only => [:new, :destroy]
  before_filter :load_user, :only => [:new, :destroy]
  
  def new
    @photo = Photo.new
  end
  
  def create
    # todo: сделать мультизагрузку
  end
  private
  
    def load_company
      @company = Company.find_by_permalink(params[:company_id])
    end
    
    def load_user
      @user = current_user
    end
end
