class Company < ActiveRecord::Base
  
  def full_address
    city = City.find_by_id(self.city_id)
    "#{self.address}, #{city.name}"
  end
  
  geocoded_by :full_address
  after_validation :geocode
    
  #associations
  has_many :reviews, :dependent => :destroy
  has_many :photos, :dependent => :destroy
  belongs_to :city
  belongs_to :category
  belongs_to :user
  
  accepts_nested_attributes_for :photos, :allow_destroy => true
  
  default_scope order("companies.name ASC")
  
  
  validates :name, :presence => { :message => "Имя пустое" }
  validates :permalink, :presence => { :message => "Пустая ссылка" }

  validates :name , :length => { :maximum => 150 }
  validates :permalink , :length => { :maximum => 60 }
  validates :category_id, :presence => { :message => "Категория должна быть выбрана!"}
  validates :permalink, :uniqueness => { :message => "Такая ссылка уже существует" }
  validates :address, :presence => { :message => "Адрес пустой" }
  
  scope :where_category_city, lambda { |cat_id, city_id| where("companies.category_id = ? AND companies.city_id = ?", "#{cat_id}", "#{city_id}") }
  
  # rating
  ajaxful_rateable :stars => 10, :dimensions => [:all]
  
  # permalink
  def to_param
    permalink
  end
  
end
