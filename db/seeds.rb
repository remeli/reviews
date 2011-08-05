# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

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