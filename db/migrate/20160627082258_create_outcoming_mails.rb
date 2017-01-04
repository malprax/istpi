class CreateOutcomingMails < ActiveRecord::Migration
  def change
    create_table :outcoming_mails do |t|
      t.string :address
      t.string :date
      t.string :abouts
      t.string :nomor_petunjuk
      t.string :isi_surat
      t.string :to
      t.string :lampiran
      t.string :tanda_tangan_1
      t.string :jabatan_tanda_tangan_1
      t.string :tanda_tangan_2
      t.string :jabatan_tanda_tangan_2
      t.string :tanda_tangan_3
      t.string :jabatan_tanda_tangan_3
      t.string :tanda_tangan_4
      t.string :jabatan_tanda_tangan_4
      t.string :catatan
      t.string :tembusan

      t.timestamps null: false
    end
  end
end
