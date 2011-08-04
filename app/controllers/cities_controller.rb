class CitiesController < ApplicationController
  
  def index
    @cities = City.all
  end
  
  def show
    @city = City.find_by_permalink(params[:id])
  end
  
  def new
    @city = City.new
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
