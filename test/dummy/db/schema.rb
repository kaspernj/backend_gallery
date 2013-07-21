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

ActiveRecord::Schema.define(version: 20130721102451) do

  create_table "backend_gallery_group_translations", force: true do |t|
    t.integer  "backend_gallery_group_id", null: false
    t.string   "locale",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "title"
  end

  add_index "backend_gallery_group_translations", ["backend_gallery_group_id"], name: "index_e6c44309c0f7c211815290ab5e6c7a4220d91f08", using: :btree
  add_index "backend_gallery_group_translations", ["locale"], name: "index_backend_gallery_group_translations_on_locale", using: :btree

  create_table "backend_gallery_groups", force: true do |t|
    t.string   "user_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "backend_gallery_picture_translations", force: true do |t|
    t.integer  "backend_gallery_picture_id", null: false
    t.string   "locale",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "title"
  end

  add_index "backend_gallery_picture_translations", ["backend_gallery_picture_id"], name: "index_bf4c594bdbcae61a9d798b7a19ca526a5ab24281", using: :btree
  add_index "backend_gallery_picture_translations", ["locale"], name: "index_backend_gallery_picture_translations_on_locale", using: :btree

  create_table "backend_gallery_pictures", force: true do |t|
    t.integer  "group_id"
    t.string   "user_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
