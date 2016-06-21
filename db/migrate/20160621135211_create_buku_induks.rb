class CreateBukuInduks < ActiveRecord::Migration
  def change
    create_table :buku_induks do |t|
      t.string :no_stambuk
      t.string :nama
      t.string :jenis_kelamin
      t.string :tempat_lahir
      t.string :tanggal_lahir
      t.string :bangsa
      t.string :agama
      t.string :alamat
      t.string :ijazah_terakhir
      t.string :nama_ayah
      t.string :nama_ibu
      t.string :nama_wali
      t.string :pekerjaan_orangtua_wali
      t.string :tanggal_akademik
      t.string :status_akademik
      t.string :semester_akademik
      t.string :foto

      t.timestamps null: false
    end
  end
end
