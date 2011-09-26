class User < ActiveRecord::Base
  #associations
  has_many :reviews, :dependent => :destroy
  has_many :companies, :dependent => :destroy
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :city_id, :rating, :name, :avatar_url, :about, :avatar
  
  validates :city_id, :presence =>  { :message => "Город должен быть выбран!"}
  validates :name, :presence => { :message => "Имя пустое" }
  validates :name, :length => { :minimum => 3, :message => "В имени должно быть минимум 3 символа"}

  # paperclip
  
  has_attached_file :avatar, :styles => { :thumb => "34x34>", :medium => "100x100>" },
                      :url => "/system/:attachment/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"

    validates_attachment_size :avatar, :less_than => 5.megabytes
    validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end
