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

ActiveRecord::Schema.define(version: 2022_03_05_185534) do

  create_table "conversations", force: :cascade do |t|
    t.string "chat"
    t.date "fecha_texto"
    t.integer "leads_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["leads_id"], name: "index_conversations_on_leads_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string "nombre"
    t.string "teléfono"
    t.string "email"
    t.date "fecha_ingreso"
    t.integer "statuses_id", null: false
    t.integer "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["statuses_id"], name: "index_leads_on_statuses_id"
    t.index ["users_id"], name: "index_leads_on_users_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "conversations", "leads", column: "leads_id"
  add_foreign_key "leads", "statuses", column: "statuses_id"
  add_foreign_key "leads", "users", column: "users_id"
end
