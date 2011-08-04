class City < ActiveRecord::Base
  # associations

  # validations
  validates :name, :permalink, :presence => true
  
  #methods
  
  def to_param
    permalink
  end
end
