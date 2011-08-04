class City < ActiveRecord::Base
  # associations

  # validations
  validates :name, :permalink, :presence => true
  
end
