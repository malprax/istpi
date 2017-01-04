class CreateStudentsBiographies < ActiveRecord::Migration
  def change
    create_table :students_biographies do |t|
      t.string :full_name
      t.string :stambuk
      t.string :jenis_kelamin
      t.string :tempat_lahir
      t.string :tanggal_lahir
      t.string :agama
      t.string :alamat_rumah_rt
      t.string :alamat_rumah_rw
      t.string :alamat_rumah_kota
      t.string :alamat_rumah_kabupaten
      t.string :alamat_rumah_kodepos
      t.string :siswa_no_kontak
      t.integer :user_id
      t.string :ayah_nama
      t.string :ayah_tempat_lahir
      t.string :ayah_tanggal_lahir
      t.string :ayah_no_kontak
      t.string :ayah_alamat_rt
      t.string :ayah_alamat_rw
      t.string :ayah_alamat_kota
      t.string :ayah_alamat_kabupaten
      t.string :ayah_alamat_kodepos
      t.string :ayah_pendidikan_terakhir
      t.string :ayah_pekerjaan
      t.string :ibu_nama
      t.string :ibu_tempat_lahir
      t.string :ibu_tanggal_lahir
      t.string :ibu_no_kontak
      t.string :ibu_alamat_rt
      t.string :ibu_alamat_rw
      t.string :ibu_alamat_kota
      t.string :ibu_alamat_kabupaten
      t.string :ibu_alamat_kodepos
      t.string :ibu_pendidikan_terakhir
      t.string :ibu_pekerjaan
      t.string :wali_nama
      t.string :wali_tempat_lahir
      t.string :wali_tanggal_lahir
      t.string :wali_no_kontak
      t.string :wali_alamat_rt
      t.string :wali_alamat_rw
      t.string :wali_alamat_kota
      t.string :wali_alamat_kabupaten
      t.string :wali_alamat_kodepos
      t.string :wali_pendidikan_terakhir
      t.string :wali_pekerjaan
      t.string :fakultas
      t.string :jurusan
      t.string :sekolah_sd
      t.string :sekolah_sd_tahun_lulus
      t.string :sekolah_smp_tahun_lulus
      t.string :sekolah_smu_tahun_lulus
      t.string :perguruan_tinggi_asal
      t.string :perguruan_tinggi_asal_tahun_terakhir

      t.timestamps null: false
    end
  end
end
