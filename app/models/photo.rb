class Photo < ActiveRecord::Base
  
  # associations
  belongs_to :user
  belongs_to :company

  
end
