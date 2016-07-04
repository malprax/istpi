class CreateFunctionalStructurals < ActiveRecord::Migration
  def change
    create_table :functional_structurals do |t|
      t.string :name
      t.string :jabatan
      t.string :nip
      t.string :nidn

      t.timestamps null: false
    end
  end
end
