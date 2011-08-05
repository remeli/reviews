class City < ActiveRecord::Base
  # associations

  # validations
  validates :name, :permalink, :presence => true # todo изменить сообщения об ошибках
  
  #methods
  
  # model name in url
  def to_param
    permalink
  end
  

  # TODO associations

end
