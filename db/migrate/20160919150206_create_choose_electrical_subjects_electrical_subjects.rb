class CreateChooseElectricalSubjectsElectricalSubjects < ActiveRecord::Migration
  def change
    create_table :choose_electrical_subjects_electrical_subjects do |t|
      t.belongs_to :electrical_subject
      t.belongs_to :choose_electrical_subject

      t.timestamps null: false
    end
  end
end
