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

ActiveRecord::Schema.define(version: 0) do

  create_table "forumcategorys", force: :cascade do |t|
    t.string "title", limit: 255, null: false
    t.text "description", null: false
  end

  create_table "forumposts", force: :cascade do |t|
    t.integer "thread_id", null: false
    t.integer "user_id", null: false
    t.integer "parent_id"
    t.string "title", limit: 255
    t.datetime "time", null: false
    t.text "content", null: false
    t.index ["parent_id"], name: "forumpost_parent_id"
    t.index ["thread_id"], name: "forumpost_thread_id"
    t.index ["user_id"], name: "forumpost_user_id"
  end

  create_table "forumthreads", force: :cascade do |t|
    t.integer "category_id"
    t.string "title", limit: 255
    t.text "description"
    t.index ["category_id"], name: "forumthread_category_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "url", limit: 255, null: false
    t.string "source", limit: 255, null: false
    t.binary "data", null: false
    t.integer "status_id", null: false
    t.text "notes"
    t.index ["status_id"], name: "image_status_id"
    t.index ["url"], name: "image_url", unique: true
  end

  create_table "imagestatus", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.index ["name"], name: "imagestatus_name", unique: true
  end

  create_table "pages", force: :cascade do |t|
    t.string "url", limit: 255, null: false
    t.text "html", null: false
    t.integer "thread_id"
    t.index ["thread_id"], name: "page_thread_id"
    t.index ["url"], name: "page_url", unique: true
  end

  create_table "pagetags", force: :cascade do |t|
    t.integer "page_id", null: false
    t.integer "tag_id", null: false
    t.index ["page_id"], name: "pagetag_page_id"
    t.index ["tag_id"], name: "pagetag_tag_id"
  end

  create_table "revisions", force: :cascade do |t|
    t.integer "page_id", null: false
    t.integer "user_id", null: false
    t.integer "number", null: false
    t.datetime "time", null: false
    t.string "comment", limit: 255
    t.index ["page_id"], name: "revision_page_id"
    t.index ["user_id"], name: "revision_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.index ["name"], name: "tag_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.index ["name"], name: "user_name", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer "page_id", null: false
    t.integer "user_id", null: false
    t.integer "value", null: false
    t.index ["page_id"], name: "vote_page_id"
    t.index ["user_id"], name: "vote_user_id"
  end

end
