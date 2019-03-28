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

ActiveRecord::Schema.define(version: 2019_03_27_221125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equations", id: :serial, force: :cascade do |t|
    t.text "equation"
    t.boolean "veracity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operational_questions", id: :serial, force: :cascade do |t|
    t.integer "operational_survey_id"
    t.integer "memory"
    t.boolean "veracity"
    t.integer "recall"
    t.integer "equation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equation_id"], name: "index_operational_questions_on_equation_id"
    t.index ["operational_survey_id"], name: "index_operational_questions_on_operational_survey_id"
  end

  create_table "operational_surveys", id: :serial, force: :cascade do |t|
    t.integer "survey_id"
    t.integer "span"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_operational_surveys_on_survey_id"
  end

  create_table "sentences", id: :serial, force: :cascade do |t|
    t.text "sentence"
    t.boolean "veracity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", id: :serial, force: :cascade do |t|
    t.integer "delay", default: 1
    t.integer "maximum_value", default: 99
    t.integer "minimum_value", default: 1
    t.integer "surveys"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", id: :serial, force: :cascade do |t|
    t.integer "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "initial_instructions", default: true
    t.boolean "operational_instructions", default: true
    t.boolean "reading_instructions", default: true
  end

  add_foreign_key "operational_questions", "equations"
  add_foreign_key "operational_questions", "operational_surveys"
  add_foreign_key "operational_surveys", "surveys"
end
