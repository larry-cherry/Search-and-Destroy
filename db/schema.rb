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

ActiveRecord::Schema.define(version: 20170217162041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.json     "board_state"
    t.string   "patrol_location",     default: "A0 A1"
    t.string   "sub_location",        default: "B0 B1 B2"
    t.string   "carrier_location",    default: "C0 C1 C2 C3 C4"
    t.string   "battleship_location", default: "D0 D1 D2 D3"
    t.string   "destroyer_location",  default: "E0 E1 E2"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "winner_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "current_player_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
