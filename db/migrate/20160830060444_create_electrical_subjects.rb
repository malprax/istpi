class CreateElectricalSubjects < ActiveRecord::Migration
  def change
    create_table :electrical_subjects do |t|
      t.string :name
      t.string :credit
      t.string :code
      t.string :category
      t.integer :semester_id

      t.timestamps null: false
    end
  end
end
