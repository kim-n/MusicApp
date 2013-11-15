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

ActiveRecord::Schema.define(:version => 20131115162805) do

  create_table "albums", :force => true do |t|
    t.string   "album_name", :null => false
    t.integer  "band_id",    :null => false
    t.string   "version",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "albums", ["album_name"], :name => "index_albums_on_album_name"

  create_table "bands", :force => true do |t|
    t.string   "band_name",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bands", ["band_name"], :name => "index_bands_on_band_name", :unique => true

  create_table "tracks", :force => true do |t|
    t.string   "track_name", :null => false
    t.integer  "album_id",   :null => false
    t.text     "lyrics"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "track_type", :null => false
  end

  add_index "tracks", ["album_id"], :name => "index_tracks_on_album_id"
  add_index "tracks", ["track_name"], :name => "index_tracks_on_track_name"

  create_table "users", :force => true do |t|
    t.string   "email",           :null => false
    t.string   "password_digest", :null => false
    t.string   "session_token",   :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
