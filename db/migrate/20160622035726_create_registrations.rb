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
      t.string :kode_formulir
      t.string :referal

      t.timestamps null: false
    end
  end
end


# A simple, small, and beauty, Brooch Wolfis Bow. Handmade from AR souvenir. You can mix the color for combination and the amount of the pearl too.
#Hello all, nice to see you again, we wish all the best for you and full of happiness. This time AR souvenir will give you a free tutorial for making simple, small and beantuy brooch wolfish bow. Please check out the video, and subscribe our page. Thank you... :)
