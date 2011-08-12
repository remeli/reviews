class CompaniesController < ApplicationController
  
  def index
    @companies = Company.all
    @title = "Каталог компаний"
  end
  
  def show
    @company = Company.find_by_permalink(params[:id])
    @title = @company.name
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
  
  def rating
    @company = Company.find_by_permalink(params[:id])
    @company.change_rating(params[:commit])
    @company.update_attributes(@company.rating)
    redirect_to(@company)
  end
  
end
