# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#cities
cities = City.create(
  [
    {:name => "Алматы", :permalink => "almaty"},
    {:name => "Астана", :permalink => "astana"},
    {:name => "Костанай", :permalink => "kostanay"},
    {:name => "Павлодар", :permalink => "pavlodar"},
    {:name => "Усть-Каменогорск", :permalink => "ustkamenogorsk"},
    {:name => "Петропавловск", :permalink => "petropavlovsk"},
    {:name => "Актау", :permalink => "aktau"},
    {:name => "Атырау", :permalink => "atirau"},
    {:name => "Уральск", :permalink => "uralsk"},
    {:name => "Караганда", :permalink => "karagandy"},
    {:name => "Тараз", :permalink => "taraz"},
  ]
)

#companies
companies = Company.create(
  [
    {:name => "Воздух", :permalink => "vozdux", :rating => 10, :description => "Клуб",
     :category_id => 1, :city_id => 1, :user_id => 1},
    {:name => "Малышок", :permalink => "malishok", :rating => 0, :description => "Кафе",
     :category_id => 1, :city_id => 2, :user_id => 1},     
    {:name => "Торт", :permalink => "tort", :rating => 10, :description => "кондитерская",
     :category_id => 1, :city_id => 3, :user_id => 1},
    {:name => "Школа 3", :permalink => "school3", :rating => 10, :description => "Школа",
     :category_id => 1, :city_id => 4, :user_id => 1},
  ]
)