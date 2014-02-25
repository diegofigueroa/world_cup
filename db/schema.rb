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

ActiveRecord::Schema.define(version: 20140224001457) do

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.datetime "date"
    t.string   "referee"
    t.integer  "stage",         default: 1
    t.integer  "state",         default: 1
    t.integer  "local_score",   default: 0
    t.integer  "visitor_score", default: 0
    t.integer  "local_id"
    t.integer  "visitor_id"
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.integer  "group_id"
    t.integer  "stadium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["group_id"], name: "index_matches_on_group_id"
  add_index "matches", ["local_id"], name: "index_matches_on_local_id"
  add_index "matches", ["loser_id"], name: "index_matches_on_loser_id"
  add_index "matches", ["stadium_id"], name: "index_matches_on_stadium_id"
  add_index "matches", ["visitor_id"], name: "index_matches_on_visitor_id"
  add_index "matches", ["winner_id"], name: "index_matches_on_winner_id"

  create_table "players", force: true do |t|
    t.string   "name"
    t.date     "birthday"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "squad_number"
    t.string   "photo_url"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "stadia", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "construction_year"
    t.integer  "capacity"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "coach"
    t.string   "flag_url"
    t.string   "photo_url"
    t.text     "description"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
