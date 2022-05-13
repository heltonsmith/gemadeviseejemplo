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

ActiveRecord::Schema[7.0].define(version: 2022_05_13_135525) do
  create_table "asignaturas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asignaturas_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "asignatura_id", null: false
    t.index ["asignatura_id", "user_id"], name: "index_asignaturas_users_on_asignatura_id_and_user_id"
    t.index ["user_id", "asignatura_id"], name: "index_asignaturas_users_on_user_id_and_asignatura_id"
  end

  create_table "fonos", force: :cascade do |t|
    t.integer "numero"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre"
    t.string "apellido"
    t.string "genero"
    t.string "pais"
    t.text "descripcion"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "asignaturas_users", "asignaturas"
  add_foreign_key "asignaturas_users", "users"
end
