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

ActiveRecord::Schema.define(version: 2022_07_06_103225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dim_customers", force: :cascade do |t|
    t.date "creation_date"
    t.text "company_name"
    t.text "full_name"
    t.text "company_contact_email"
    t.integer "Nb_Elevator"
    t.text "customer_city"
  end

  create_table "fact_contacts", force: :cascade do |t|
    t.date "creation_date"
    t.text "company_name"
    t.text "email"
    t.text "project_name"
  end

  create_table "fact_elevators", force: :cascade do |t|
    t.serial "serial_number", null: false
    t.date "date_of_commissioning"
    t.integer "building_id"
    t.integer "customer_id"
    t.text "building_city"
  end

  create_table "fact_quotes", force: :cascade do |t|
    t.date "creation_date"
    t.text "company_name"
    t.text "quote_email"
    t.integer "Nb_Elevator"
  end

end
