class PhotosController < ApplicationController

  #filters:
    
  before_filter :load_company, :only => [:destroy]
  before_filter :load_user, :only => [:destroy]
  
  
  private
  
    def load_company
      @company = Company.find_by_permalink(params[:company_id])
    end
    
    def load_user
      @user = current_user
    end
end
