class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :nama
      t.string :tempat_lahir
      t.string :tanggal_lahir
      t.string :jenis_kelamin
      t.string :alamat
      t.string :kontak_person
      t.string :asal_sekolah
      t.string :tahun_lulus
      t.string :fakultas_peminat
      t.string :jurusan_peminat

      t.timestamps null: false
    end
  end
end
