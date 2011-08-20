class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :city_id, :first_name, :last_name, :avatar_url, :about
  
  validates :city_id, :presence =>  { :message => "Город должен быть выбран!"}
  validates :name, :presence => { :message => "Имя пустое" }
  validates :name, :length => { :minimum => 3, :message => "В имени должно быть минимум 3 символа"}
end
