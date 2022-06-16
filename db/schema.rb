# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_16_162259) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adverts", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.text "description"
    t.string "category"
    t.integer "room"
    t.integer "bathroom"
    t.integer "area"
    t.string "address"
    t.string "city"
    t.string "zip_code"
    t.boolean "garden"
    t.boolean "garage"
    t.string "pictures_url", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_adverts_on_user_id"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "receives", force: :cascade do |t|
    t.string "content"
    t.integer "sender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "advert_id"
    t.index ["advert_id"], name: "index_receives_on_advert_id"
    t.index ["user_id"], name: "index_receives_on_user_id"
  end

  create_table "sends", force: :cascade do |t|
    t.string "content"
    t.integer "receiver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "advert_id"
    t.index ["advert_id"], name: "index_sends_on_advert_id"
    t.index ["user_id"], name: "index_sends_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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

  add_foreign_key "adverts", "users"
  add_foreign_key "receives", "adverts"
  add_foreign_key "receives", "users"
  add_foreign_key "sends", "adverts"
  add_foreign_key "sends", "users"
end
