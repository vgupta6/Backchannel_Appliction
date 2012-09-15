# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120908164002) do

  create_table "user_accounts", :force => true do |t|
    t.string   "name"
    t.string   "userName"
    t.string   "encrypted_password"
    t.string   "email"
    t.date     "dateOfBirth"
    t.text     "address"
    t.string   "phNum"
    t.string   "gender"
    t.text     "professionalStatus"
    t.text     "interests"
    t.boolean  "admin"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
