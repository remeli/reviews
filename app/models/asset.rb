class Asset < ActiveRecord::Base
  belongs_to :photo, :polymorphic => true
  
  # paperclip
  
  has_attached_file :image, :styles => { :thumb => "100x100>", :medium => "500x500>" },
                      :url => "/system/:attachment/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  
  # validates                      
  validates_attachment_presence :image, :message => "Выберите файл"
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif'], :message => "Неподдерживаемый формат"
  
  #Set number to the max Attachments allowed for owner
  
  Max_Attachments = 5
  Max_Attachments_Size = 5.megabyte
  
  def url(*args)
    data.url(*args)
  end
  
  def name
    data_file_name
  end
  
  def content_type
    data_content_type
  end
  
  def file_size
    data_file_size
  end
  
end
