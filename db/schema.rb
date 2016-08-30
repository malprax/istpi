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

ActiveRecord::Schema.define(version: 20160830054932) do

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

  create_table "civil_subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "credit"
    t.string   "code"
    t.string   "category"
    t.string   "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "functional_structurals", force: :cascade do |t|
    t.string   "name_to_list"
    t.integer  "lecture_id"
    t.string   "jabatan"
    t.string   "nip"
    t.string   "nidn"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "incoming_mails", force: :cascade do |t|
    t.string   "address"
    t.string   "date"
    t.string   "abouts"
    t.string   "nomor_petunjuk"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "name"
    t.string   "nidn"
    t.string   "fakultas"
    t.string   "jurusan"
    t.string   "alamat"
    t.string   "no_kontak"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outcoming_mails", force: :cascade do |t|
    t.string   "address"
    t.string   "date"
    t.string   "abouts"
    t.string   "nomor_petunjuk"
    t.string   "isi_surat"
    t.string   "to"
    t.string   "lampiran"
    t.string   "tanda_tangan_1"
    t.string   "jabatan_tanda_tangan_1"
    t.string   "tanda_tangan_2"
    t.string   "jabatan_tanda_tangan_2"
    t.string   "tanda_tangan_3"
    t.string   "jabatan_tanda_tangan_3"
    t.string   "tanda_tangan_4"
    t.string   "jabatan_tanda_tangan_4"
    t.string   "catatan"
    t.string   "tembusan"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "nama"
    t.string   "tempat_lahir"
    t.string   "tanggal_lahir"
    t.string   "jenis_kelamin"
    t.string   "alamat"
    t.string   "kontak_person"
    t.string   "asal_sekolah"
    t.string   "tahun_lulus"
    t.string   "fakultas_peminat"
    t.string   "jurusan_peminat"
    t.string   "kode_formulir"
    t.string   "referal"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "students_biographies", force: :cascade do |t|
    t.string   "name"
    t.string   "stambuk"
    t.string   "jenis_kelamin"
    t.string   "tempat_lahir"
    t.string   "tanggal_lahir"
    t.string   "agama"
    t.string   "alamat_rumah_rt"
    t.string   "alamat_rumah_rw"
    t.string   "alamat_rumah_kota"
    t.string   "alamat_rumah_kabupaten"
    t.string   "alamat_rumah_kodepos"
    t.string   "siswa_no_kontak"
    t.string   "siswa_email"
    t.string   "ayah_nama"
    t.string   "ayah_tempat_lahir"
    t.string   "ayah_tanggal_lahir"
    t.string   "ayah_no_kontak"
    t.string   "ayah_alamat_rt"
    t.string   "ayah_alamat_rw"
    t.string   "ayah_alamat_kota"
    t.string   "ayah_alamat_kabupaten"
    t.string   "ayah_alamat_kodepos"
    t.string   "ayah_pendidikan_terakhir"
    t.string   "ayah_pekerjaan"
    t.string   "ibu_nama"
    t.string   "ibu_tempat_lahir"
    t.string   "ibu_tanggal_lahir"
    t.string   "ibu_no_kontak"
    t.string   "ibu_alamat_rt"
    t.string   "ibu_alamat_rw"
    t.string   "ibu_alamat_kota"
    t.string   "ibu_alamat_kabupaten"
    t.string   "ibu_alamat_kodepos"
    t.string   "ibu_pendidikan_terakhir"
    t.string   "ibu_pekerjaan"
    t.string   "wali_nama"
    t.string   "wali_tempat_lahir"
    t.string   "wali_tanggal_lahir"
    t.string   "wali_no_kontak"
    t.string   "wali_alamat_rt"
    t.string   "wali_alamat_rw"
    t.string   "wali_alamat_kota"
    t.string   "wali_alamat_kabupaten"
    t.string   "wali_alamat_kodepos"
    t.string   "wali_pendidikan_terakhir"
    t.string   "wali_pekerjaan"
    t.string   "fakultas"
    t.string   "jurusan"
    t.string   "sekolah_sd"
    t.string   "sekolah_sd_tahun_lulus"
    t.string   "sekolah_smp_tahun_lulus"
    t.string   "sekolah_smu_tahun_lulus"
    t.string   "perguruan_tinggi_asal"
    t.string   "perguruan_tinggi_asal_tahun_terakhir"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "role"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
