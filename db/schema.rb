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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131208132558) do

  create_table "borrowed_equipments", force: true do |t|
    t.date     "dateBorrowed"
    t.date     "dateReturned"
    t.integer  "employee_id"
    t.integer  "equipment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "borrowed_equipments", ["employee_id"], name: "index_borrowed_equipments_on_employee_id"
  add_index "borrowed_equipments", ["equipment_id"], name: "index_borrowed_equipments_on_equipment_id"

  create_table "employees", force: true do |t|
    t.string   "code"
    t.string   "firstName"
    t.string   "middleName"
    t.string   "lastName"
    t.date     "birthday"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipments", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
