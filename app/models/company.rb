class Company < ActiveRecord::Base
  # associations
  belongs_to :city
  
  # validations :
  
  # validates => presence
  validates :name, :presence => { :message => "Имя пустое" }
  validates :permalink, :presence => { :messages => "Пустая ссылка пустая" }
  #validates => length
  validates :name , :length => { :maximum => 150 }
  validates :permalink , :length => { :maximum => 60 }
  
  # todo: scope, и сделать филтрацию компаний по городам
  # todo : заполнить вьюхи

  def to_param
    permalink
  end
  
end
