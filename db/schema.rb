# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110806174928) do

  create_table "cities", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "permalink",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name",        :limit => 150,                :null => false
    t.string   "permalink",   :limit => 60,                 :null => false
    t.integer  "rating",                     :default => 0
    t.text     "description"
    t.integer  "category_id",                               :null => false
    t.integer  "city_id",                                   :null => false
    t.integer  "user_id",                                   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["category_id"], :name => "index_companies_on_category_id"
  add_index "companies", ["city_id"], :name => "index_companies_on_city_id"
  add_index "companies", ["name"], :name => "index_companies_on_name"

end
