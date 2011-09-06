class Company < ActiveRecord::Base
  
  #associations
  has_many :reviews
  belongs_to :city
  belongs_to :category
  belongs_to :user
  default_scope order("companies.name ASC")
  
  validates :name, :presence => { :message => "Имя пустое" }
  validates :permalink, :presence => { :message => "Пустая ссылка" }

  validates :name , :length => { :maximum => 150 }
  validates :permalink , :length => { :maximum => 60 }
  validates :category_id, :presence => { :message => "Категория должна быть выбрана!"}
  validates :permalink, :uniqueness => { :message => "Такая ссылка уже существует" }
  validates :address, :presence => { :message => "Адрес пустой" }
  
  scope :where_category_city, lambda { |cat_id, city_id| where("companies.category_id = ? AND companies.city_id = ?", "#{cat_id}", "#{city_id}") }
  
  def to_param
    permalink
  end
  
  def change_rating(commit)
    case commit
    when commit = "+"
      self.rating += 1
    when commit = "-"
      self.rating -= 1      
    end
  end
  
end
