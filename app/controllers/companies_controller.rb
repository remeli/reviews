class CompaniesController < ApplicationController
  
  def index
    @companies = Company.all
    @title = "Компании"
  end
  
  def show
    @company = Company.find_by_permalink(params[:id])
  end
  
  def new
    @company = Company.new
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
  end
  
  def update
    @company = Company.find_by_permalink(params[:id])
    if @company.update_attributes(params[:company])
      redirect_to(@company, "Компания успешно обновлена")
    else
      render(:action => "edit")
    end    
  end
  
  def destroy
    @company = Company.find_by_permalink(params[:id])
    @company.destroy
    redirect_to(companies_url)
  end
  
end
