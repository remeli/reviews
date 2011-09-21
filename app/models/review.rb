class Review < ActiveRecord::Base
  #associations
  belongs_to :user
  belongs_to :company
  
  #validations
  validates :post, :presence => { :message => "Комментарий пустой" }
  validates :type, :presence => { :message => "Тип комментария должен быть указан" }
  validates :user_id, :presence => { :message => "Что-то пошло не так" }
  validates :company_id, :presence => { :message => "Что-то пошло не так" }
  
  #scope
  default_scope order("reviews.id ASC")
end
