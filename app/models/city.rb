class City < ActiveRecord::Base
  # associations

  # validations
  validates :name, :permalink, :presence => true
  
  #methods
  
  # model name in url
  def to_param
    permalink
  end
end
