class Photo < ActiveRecord::Base
  
  # associations
  belongs_to :user
  belongs_to :company
  has_many :assets, :dependent => :destroy
  
  validate :validate_attachments
    
  def validate_attachments
    errors.add_to_base("Количество фотографий не должно превышать: #{Asset::Max_Attachments}") if assets.length > Asset::Max_Attachments
    assets.each do |a|
      errors.add_to_base("#{a.name} превышает размер #{Asset::Max_Attachments_Size/1.megabyte} mb") if a.file_size > Max_Attachments_Size
    end
  end
end
