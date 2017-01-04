class CreateFunctionalStructurals < ActiveRecord::Migration
  def change
    create_table :functional_structurals do |t|
      t.string :name_to_list
      t.integer :lecture_id
      t.string :jabatan
      t.string :nip
      t.string :nidn

      t.timestamps null: false
    end
  end
end
