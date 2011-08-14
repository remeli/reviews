class Category < ActiveRecord::Base
  has_many :companies
  
  validates :name, :presence => { :message => "Пустое имя" }
  validates :permalink, :presence => { :message => "Пустая прямая ссылка" }
  validates :name, :uniqueness => { :message => "Такое имя уже существует" }
  validates :permalink, :uniqueness => { :message => "Такая ссылка уже существует" }
  validates :name , :length => { :maximum => 100 }
  validates :permalink , :length => { :maximum => 150 }
  
  default_scope order("categories.name ASC")
    
  def to_param
    permalink
  end
  
end
