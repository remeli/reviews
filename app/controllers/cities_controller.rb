class CitiesController < ApplicationController
  
  before_filter :user_have, :only => [:new, :create, :edit, :update, :destroy]
  
  def index
    @cities = City.all
    @title = "Города"
  end
  
  def show
    @city = City.find_by_permalink(params[:id])
    @categories = Category.all
    @title = "Города" + " / " + @city.name
  end
  
  def new
    @city = City.new
    @title = "Города" + " / " + "Новый город" 
  end
  
  def create
    @city = City.new(params[:city])
    if @city.save
      redirect_to(@city, :notice => "Город успешно добавлен")
    else
      render(:action => "new")
    end
  end
  
  def edit
    @city = City.find_by_permalink(params[:id])
    @title = "Города" + " / " + "Редактирование города" + " / " + @city.name
  end
  
  def update
    @city = City.find_by_permalink(params[:id])
    if @city.update_attributes(params[:city])
      redirect_to(@city, :notice => "Город успешно обновлен")
    else
      render(:action => "edit")
    end
  end
  
  def destroy
    @city = City.find_by_permalink(params[:id])
    @city.destroy
    redirect_to(cities_url)
  end
  
end
