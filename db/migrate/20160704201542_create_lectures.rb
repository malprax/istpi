class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :nidn
      t.string :fakultas
      t.string :jurusan
      t.string :alamat
      t.string :no_kontak

      t.timestamps null: false
    end
  end
end
