class CompaniesController < ApplicationController
  
  before_filter :user_have, :only => [:new, :create, :edit, :update, :destroy]
  before_filter :check_owner, :only => [:edit, :update, :destroy]
  before_filter :load_company, :only => [:add_photo]
  
  def index
    @companies = Company.all
    @title = "Каталог компаний"
  end
  
  def show
    @company = Company.find_by_permalink(params[:id])
    @title = "#{@company.city.name} / #{@company.category.name} / #{@company.name}"
  end
  
  def new
    @company = Company.new
    @title = "Новая компания"
  end
  
  def create
    @company = Company.new(params[:company])
    if @company.save
      redirect_to(@company, :notice => "Компания успешно добавлена")
    else
      render(:action => "new")
    end
  end
  
  def edit
    @company = Company.find_by_permalink(params[:id])
    @title = "Редактирование компании"
  end
  
  def update
    @company = Company.find_by_permalink(params[:id])
    if @company.update_attributes(params[:company])
      redirect_to(@company, :notice => "Компания успешно обновлена")
    else
      render(:action => "edit")
    end
  end
  
  def destroy
    @company = Company.find_by_permalink(params[:id])
    @company.destroy
    redirect_to(companies_url)
  end
  
  # rating
  def rate
    @company = Company.find_by_permalink(params[:id])
    @company.rate(params[:stars], current_user, params[:dimension])
  end
  
  #add photo
  
  def add_photo
    10.times { @company.photos.build }
  end
  
  private
  
    def check_owner
      @company = Company.find_by_permalink(params[:id])
      unless current_user.id == @company.user_id
        redirect_to @company, :alert => "У Вас нет прав для редактирования/удаления этой компании"
      end
    end
    
    def load_company
      @company = Company.find_by_permalink(params[:id])
    end
    
end
