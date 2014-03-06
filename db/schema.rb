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

ActiveRecord::Schema.define(:version => 20140306073522) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "battings", :force => true do |t|
    t.integer  "innings"
    t.string   "name"
    t.integer  "runs"
    t.integer  "balls"
    t.integer  "ones"
    t.integer  "twos"
    t.integer  "threes"
    t.integer  "fours"
    t.integer  "sixes"
    t.boolean  "status"
    t.string   "bowler"
    t.float    "strikerate"
    t.integer  "score_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "battings", ["score_id"], :name => "index_battings_on_score_id"
  add_index "battings", ["team_id"], :name => "index_battings_on_team_id"

  create_table "bowlers", :force => true do |t|
    t.integer  "innings"
    t.string   "name"
    t.integer  "runs"
    t.float    "overs"
    t.float    "avg"
    t.integer  "wides"
    t.integer  "noball"
    t.integer  "maidens"
    t.integer  "wkts"
    t.integer  "score_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bowlers", ["score_id"], :name => "index_bowlers_on_score_id"
  add_index "bowlers", ["team_id"], :name => "index_bowlers_on_team_id"

  create_table "scores", :force => true do |t|
    t.string   "name"
    t.string   "team1"
    t.string   "team2"
    t.string   "team1score"
    t.string   "team2score"
    t.string   "toss"
    t.string   "venue"
    t.date     "date"
    t.string   "guest1"
    t.string   "guest2"
    t.string   "guest3"
    t.string   "guest4"
    t.string   "guest5"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "photo1_file_name"
    t.string   "photo1_content_type"
    t.integer  "photo1_file_size"
    t.datetime "photo1_updated_at"
    t.string   "photo2_file_name"
    t.string   "photo2_content_type"
    t.integer  "photo2_file_size"
    t.datetime "photo2_updated_at"
    t.string   "photo3_file_name"
    t.string   "photo3_content_type"
    t.integer  "photo3_file_size"
    t.datetime "photo3_updated_at"
    t.string   "photo4_file_name"
    t.string   "photo4_content_type"
    t.integer  "photo4_file_size"
    t.datetime "photo4_updated_at"
    t.string   "photo5_file_name"
    t.string   "photo5_content_type"
    t.integer  "photo5_file_size"
    t.datetime "photo5_updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
