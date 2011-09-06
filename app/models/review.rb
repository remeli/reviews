class Review < ActiveRecord::Base
  #associations
  belongs_to :user
  belongs_to :company
  
  #validations
  validates :post, :presence => { :message => "Комментарий пустой" }
  validates :post, :length => { :minimum => 5, :message => "Комментарий должен состоять как минимум из 20 символов" }
  validates :type, :presence => { :message => "Тип комментария должен быть указан" }
  validates :user_id, :presence => { :message => "Что-то пошло не так" }
  validates :company_id, :presence => { :message => "Что-то пошло не так" }
  
  #scope
  default_scope order("reviews.id ASC")
end
