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

ActiveRecord::Schema.define(version: 20140104111928) do

  create_table "backups", force: true do |t|
    t.string   "name"
    t.string   "host"
    t.string   "path"
    t.string   "filename_pattern"
    t.string   "username"
    t.binary   "password"
    t.binary   "password_key"
    t.binary   "password_iv"
    t.integer  "scheduled_hour"
    t.integer  "scheduled_minute"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "snapshots", force: true do |t|
    t.string   "backup_file_path"
    t.integer  "backup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "snapshot_file"
  end

end
