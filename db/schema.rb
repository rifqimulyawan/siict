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

ActiveRecord::Schema.define(version: 20160814085824) do

  create_table "barangs", force: :cascade do |t|
    t.integer  "kategori_id"
    t.integer  "merk_id"
    t.text     "nama"
    t.integer  "baik"
    t.integer  "rusak"
    t.date     "masuk"
    t.string   "gambar"
    t.text     "keterangan"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "barangs", ["kategori_id"], name: "index_barangs_on_kategori_id"
  add_index "barangs", ["merk_id"], name: "index_barangs_on_merk_id"

  create_table "kategoris", force: :cascade do |t|
    t.string   "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merks", force: :cascade do |t|
    t.string   "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
