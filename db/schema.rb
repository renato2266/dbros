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

ActiveRecord::Schema.define(version: 20131119151111) do

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

  create_table "fascicles_names", force: true do |t|
    t.integer  "name_id"
    t.integer  "fascicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "gruppo_criminale"
    t.text     "note_gruppo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

end
