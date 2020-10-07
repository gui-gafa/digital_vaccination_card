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

ActiveRecord::Schema.define(version: 2020_10_06_184243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "vaccine_type_id", null: false
    t.text "public"
    t.text "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vaccine_type_id"], name: "index_campaigns_on_vaccine_type_id"
  end

  create_table "doses", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id"
    t.bigint "vaccine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_doses_on_user_id"
    t.index ["vaccine_id"], name: "index_doses_on_vaccine_id"
  end

  create_table "reccomended_doses", force: :cascade do |t|
    t.integer "month_age"
    t.bigint "suggested_vaccine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["suggested_vaccine_id"], name: "index_reccomended_doses_on_suggested_vaccine_id"
  end

  create_table "suggested_doses", force: :cascade do |t|
    t.integer "month_age"
    t.text "description"
    t.bigint "vaccine_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vaccine_type_id"], name: "index_suggested_doses_on_vaccine_type_id"
  end

  create_table "suggested_vaccines", force: :cascade do |t|
    t.text "description"
    t.bigint "vaccine_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vaccine_type_id"], name: "index_suggested_vaccines_on_vaccine_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "cpf"
    t.date "birth_date"
    t.string "address"
    t.boolean "authenticated"
    t.string "role"
    t.index ["cpf"], name: "index_users_on_cpf", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccine_types", force: :cascade do |t|
    t.string "name"
    t.text "prevents"
    t.text "composition"
    t.text "indication"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vaccines", force: :cascade do |t|
    t.text "user_comment"
    t.bigint "user_id", null: false
    t.bigint "vaccine_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_vaccines_on_user_id"
    t.index ["vaccine_type_id"], name: "index_vaccines_on_vaccine_type_id"
  end

  add_foreign_key "campaigns", "vaccine_types"
  add_foreign_key "doses", "users"
  add_foreign_key "doses", "vaccines"
  add_foreign_key "reccomended_doses", "suggested_vaccines"
  add_foreign_key "suggested_doses", "vaccine_types"
  add_foreign_key "suggested_vaccines", "vaccine_types"
  add_foreign_key "vaccines", "users"
  add_foreign_key "vaccines", "vaccine_types"
end
