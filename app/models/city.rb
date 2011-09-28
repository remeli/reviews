class City < ActiveRecord::Base
  has_many :companies, :dependent => :nullify

  validates :name, :presence => { :message => "Имя пустое"} #todo: http://rubyclub.com.ua/messages/show/15656
  
  validates :permalink, :presence => { :message => "Постоянная ссылка пустая"}
  
  def to_param
    permalink
  end
  
  def self.ascname
    order("cities.name ASC")
  end
  
end
