class City < ActiveRecord::Base
  # associations

  # validations
  validates :name, :presence => { :message => "Имя пустое"} #todo: перевести полностью сообщение
  validates :permalink, :presence => { :message => "Постоянная ссылка пустая"}
  #methods
  
  # model name in url
  def to_param
    permalink
  end
  

  # TODO associations

end
