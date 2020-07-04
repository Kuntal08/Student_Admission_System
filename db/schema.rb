# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_04_045836) do

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

  create_table "boards", force: :cascade do |t|
    t.string "board"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "full_form"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "division"
    t.string "stage"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "school_id"
    t.index ["school_id"], name: "index_divisions_on_school_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city_name"
    t.string "country_name"
    t.integer "pin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "location_id"
    t.integer "board_id"
    t.index ["board_id"], name: "index_schools_on_board_id"
    t.index ["location_id"], name: "index_schools_on_location_id"
  end

  create_table "seekers", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.text "home_address"
    t.string "email"
    t.integer "phone"
    t.date "birth_date"
    t.string "father_name"
    t.string "mother_name"
    t.string "mother_employment"
    t.string "father_employment"
    t.boolean "approve", default: false
    t.boolean "reject", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gender"
    t.integer "board_id"
    t.integer "school_id"
    t.integer "division_id"
    t.text "reason"
    t.index ["board_id"], name: "index_seekers_on_board_id"
    t.index ["division_id"], name: "index_seekers_on_division_id"
    t.index ["school_id"], name: "index_seekers_on_school_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "schools", "boards"
  add_foreign_key "schools", "locations"
  add_foreign_key "seekers", "boards"
  add_foreign_key "seekers", "divisions"
  add_foreign_key "seekers", "schools"
end
