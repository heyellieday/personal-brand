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

ActiveRecord::Schema.define(version: 20160229183900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "content"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "date"
    t.integer  "position"
  end

  add_index "achievements", ["slug"], name: "index_achievements_on_slug", using: :btree

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "content"
    t.string   "slug"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "awards", ["slug"], name: "index_awards_on_slug", using: :btree

  create_table "mentions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "content"
    t.string   "slug"
    t.text     "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "mentions", ["slug"], name: "index_mentions_on_slug", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.text     "website"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "content"
  end

  add_index "organizations", ["slug"], name: "index_organizations_on_slug", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "created_at_relative"
    t.string   "created_at_english"
    t.string   "subtitle"
    t.text     "excerpt"
    t.string   "recommends"
    t.string   "url"
    t.string   "full_text"
    t.string   "slug"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true, using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "job_title"
    t.string   "organization_name"
    t.text     "summary"
    t.string   "location"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "slug"
    t.string   "brand_image"
    t.string   "state"
    t.string   "website"
    t.string   "cover_image"
    t.string   "name"
    t.text     "description"
    t.text     "content"
  end

  add_index "projects", ["slug"], name: "index_projects_on_slug", unique: true, using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "content"
    t.text     "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "skills", ["slug"], name: "index_skills_on_slug", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
