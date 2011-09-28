class PhotosController < ApplicationController

  #filters:
  
  before_filter :load_company, :only => [:new, :create, :destroy]
  before_filter :load_user, :only => [:new, :create, :destroy]
  
  # crud:
  
  # def index
  #   @photos = Photo.all
  # end
  # 
  # def show
  #   @photo = Photo.find(params[:id])
  # end
  
  def new
    @photo = @company.photos.new
  end
  
  def create
    @photo = @company.photos.new(params[:photo])
    if @photo.save
      redirect_to(@company, :notice => "Фотография успешно добавлена")
    else
      #TODO: разобраться с выводом ошибок
      redirect_to(edit_company_path(@company))
    end
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
