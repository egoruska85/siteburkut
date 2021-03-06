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

ActiveRecord::Schema.define(version: 2021_09_18_233822) do

  create_table "abouts", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "text_ru"
    t.text "text_en"
    t.text "text_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "carousel_actives", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "text_ru"
    t.text "text_en"
    t.text "text_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carousels", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "text_ru"
    t.text "text_en"
    t.text "text_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "text_ru"
    t.text "text_en"
    t.text "text_tm"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_comments_on_product_id"
  end

  create_table "contact_details", force: :cascade do |t|
    t.text "address_ru"
    t.text "address_en"
    t.text "address_tm"
    t.string "phone"
    t.string "faks"
    t.string "email1"
    t.string "email2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.string "ru"
    t.string "en"
    t.string "tm"
    t.text "ru_title"
    t.text "en_title"
    t.text "tm_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logos", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", force: :cascade do |t|
    t.string "ru"
    t.string "en"
    t.string "tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "title_ru"
    t.string "title_en"
    t.string "title_tm"
    t.text "text_ru"
    t.text "text_en"
    t.text "text_tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sertificates", force: :cascade do |t|
    t.string "ru"
    t.string "en"
    t.string "tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "years", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
