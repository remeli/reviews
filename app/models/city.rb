class City < ActiveRecord::Base
  # associations

  # validations
  validates :name, :presence => { :message => "Имя пустое"} #todo: http://rubyclub.com.ua/messages/show/15656
  
  validates :permalink, :presence => { :message => "Постоянная ссылка пустая"}
  #methods
  
  # model name in url
  def to_param
    permalink
  end
  

  # TODO associations

end
