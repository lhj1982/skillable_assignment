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

ActiveRecord::Schema.define(version: 20140124151219) do

  create_table "companies", force: true do |t|
    t.string   "logo"
    t.string   "name"
    t.integer  "city"
    t.integer  "country"
    t.decimal  "employee_satisfaction"
    t.integer  "votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_reviews", force: true do |t|
    t.string  "company_reviews"
    t.integer "company_id"
    t.integer "user_id"
    t.integer "clarity_of_role"
    t.integer "trust_responsibilities"
    t.integer "autonomy_flexibility"
    t.integer "guidance_feedback"
    t.integer "creativity_innovation"
    t.integer "equality_fairness"
    t.integer "consistency_transparency"
    t.integer "career_growth"
    t.integer "compensation_benefits"
    t.integer "recongnition_reward"
    t.integer "learning_improvement"
    t.integer "cooperation_efficiency"
    t.integer "workplace"
    t.integer "atmosphere_relationship"
    t.integer "trust_leadship"
    t.integer "wordload_balance"
    t.integer "relationship_with_supervisor"
    t.integer "stimulating_job"
    t.integer "voice_own_option"
    t.integer "sense_belonging"
    t.integer "culture_diversity"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
