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

ActiveRecord::Schema.define(version: 20160621135211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buku_induks", force: :cascade do |t|
    t.string   "no_stambuk"
    t.string   "nama"
    t.string   "jenis_kelamin"
    t.string   "tempat_lahir"
    t.string   "tanggal_lahir"
    t.string   "bangsa"
    t.string   "agama"
    t.string   "alamat"
    t.string   "ijazah_terakhir"
    t.string   "nama_ayah"
    t.string   "nama_ibu"
    t.string   "nama_wali"
    t.string   "pekerjaan_orangtua_wali"
    t.string   "tanggal_akademik"
    t.string   "status_akademik"
    t.string   "semester_akademik"
    t.string   "foto"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
