class Photo < ActiveRecord::Base
  
  # associations
  belongs_to :user
  belongs_to :company
  
  # paperclip
  
  has_attached_file :image, :styles => { :thumb => "100x100>", :medium => "500x500>" },
                      :url => "/system/:attachment/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"

    validates_attachment_size :image, :less_than => 5.megabytes
    validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end
