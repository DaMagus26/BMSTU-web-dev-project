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

ActiveRecord::Schema[7.0].define(version: 2022_12_23_221109) do
  create_table "final_scores", force: :cascade do |t|
    t.integer "analysis"
    t.integer "applicability"
    t.integer "innovativeness"
    t.integer "presentation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teams_id", null: false
    t.integer "users_id", null: false
    t.index ["teams_id"], name: "index_final_scores_on_teams_id"
    t.index ["users_id"], name: "index_final_scores_on_users_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "header", null: false
    t.text "content", null: false
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semi_final_scores", force: :cascade do |t|
    t.integer "analysis", default: 0
    t.integer "applicability", default: 0
    t.integer "innovativeness", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teams_id", null: false
    t.integer "users_id", null: false
    t.index ["teams_id"], name: "index_semi_final_scores_on_teams_id"
    t.index ["users_id"], name: "index_semi_final_scores_on_users_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.integer "track"
    t.decimal "semi_final_score", precision: 3
    t.decimal "final_score", precision: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "leader"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "first_name"
    t.string "last_name"
    t.integer "teams_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["teams_id"], name: "index_users_on_teams_id"
  end

  add_foreign_key "final_scores", "teams", column: "teams_id"
  add_foreign_key "final_scores", "users", column: "users_id"
  add_foreign_key "semi_final_scores", "teams", column: "teams_id"
  add_foreign_key "semi_final_scores", "users", column: "users_id"
  add_foreign_key "users", "teams", column: "teams_id"
end
