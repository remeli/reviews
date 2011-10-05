class Asset < ActiveRecord::Base
  belongs_to :photo
  
  # paperclip
  
  has_attached_file :image, :styles => { :thumb => "100x100>", :medium => "500x500>" },
                      :url => "/system/:attachment/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  
  # validates
                      
  validates_attachment_presence :image, :message => "Выберите файл"
  validates_attachment_size :image, :less_than => 5.megabytes, :message => "Размер не должен превышать 5 мегабайт"
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif'], :message => "Неподдерживаемый формат"
  
end
