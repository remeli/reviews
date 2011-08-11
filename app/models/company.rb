class Company < ActiveRecord::Base
  
  belongs_to :city
  
  default_scope order("companies.name ASC")
  
  validates :name, :presence => { :message => "Имя пустое" }
  validates :permalink, :presence => { :message => "Пустая ссылка пустая" }

  validates :name , :length => { :maximum => 150 }
  validates :permalink , :length => { :maximum => 60 }

  validates :permalink, :uniqueness => { :message => "Такая ссылка уже существует" }
  validates :address, :presence => { :message => "Адрес пустой" }
  # todo: scope, и сделать филтрацию компаний по городам
  

  def to_param
    permalink
  end

  
end
