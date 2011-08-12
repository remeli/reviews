class CategoriesController < ApplicationController
  
  
  def show
    @category = Category.find_by_permalink(params[:id])
    @title = @category.name
  end
  
  def new
    @category = Category.new
    @title = "Новая категория"
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to(@category, :notice => "Категория успешно создана")
    else
      render(:action => "new")
    end
  end
  
  def edit
    @category = Category.find_by_permalink(params[:id])
    @title = "Редактирование категории: #{@category.name}"
  end
  
  def update
    @category = Category.find_by_permalink(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to(@category, :notice => "Категория успешно отредактирована")
    else
      render(:action => "edit")
    end
  end
  
  def destroy
    @category = Category.find_by_permalink(params[:id])
    @category.destroy
    redirect_to(categories_url)
  end 

end
