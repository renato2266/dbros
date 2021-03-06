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

ActiveRecord::Schema.define(version: 20131129104103) do

  create_table "ambits", force: true do |t|
    t.string   "ambito_criminale"
    t.text     "note_ambito"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas", force: true do |t|
    t.string   "area_criminale"
    t.text     "note_area"
    t.integer  "ambit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "associations", force: true do |t|
    t.string   "associazione_criminale"
    t.text     "note_associazione"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dossiers", force: true do |t|
    t.integer  "numero"
    t.date     "data"
    t.text     "oggetto"
    t.text     "testo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "documento_file_name"
    t.string   "documento_content_type"
    t.integer  "documento_file_size"
    t.datetime "documento_updated_at"
  end

  create_table "dossiers_names", id: false, force: true do |t|
    t.integer  "name_id"
    t.integer  "dossier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fascicles", force: true do |t|
    t.integer  "numero"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fascicles_groups", force: true do |t|
    t.integer  "group_id"
    t.integer  "fascicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fascicles_magazines", force: true do |t|
    t.integer  "magazine_id"
    t.integer  "fascicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fascicles_names", force: true do |t|
    t.integer  "name_id"
    t.integer  "fascicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fascicles_unions", force: true do |t|
    t.integer  "fascicle_id"
    t.integer  "union_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "gruppo_criminale"
    t.text     "note_gruppo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "magazines", force: true do |t|
    t.string   "name_magazine"
    t.date     "data_fondazione"
    t.string   "luogo_stampa"
    t.integer  "area_id"
    t.integer  "union_id"
    t.integer  "group_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "magazines", ["area_id"], name: "index_magazines_on_area_id", using: :btree
  add_index "magazines", ["group_id"], name: "index_magazines_on_group_id", using: :btree
  add_index "magazines", ["union_id"], name: "index_magazines_on_union_id", using: :btree

  create_table "names", force: true do |t|
    t.string   "cognome_nome"
    t.string   "luogo_nascita"
    t.date     "data_nascita"
    t.string   "cod_fiscale"
    t.string   "residenza"
    t.string   "via"
    t.string   "domicilio"
    t.string   "cittadinanza"
    t.string   "professione"
    t.string   "soprannome"
    t.string   "alias"
    t.text     "note_generali"
    t.integer  "ambit_id"
    t.integer  "area_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "names", ["ambit_id"], name: "index_names_on_ambit_id", using: :btree
  add_index "names", ["area_id"], name: "index_names_on_area_id", using: :btree
  add_index "names", ["group_id"], name: "index_names_on_group_id", using: :btree

  create_table "unions", force: true do |t|
    t.string   "denominazione"
    t.string   "sede"
    t.integer  "area_id"
    t.text     "descrizione"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unions", ["area_id"], name: "index_unions_on_area_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
