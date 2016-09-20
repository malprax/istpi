class CreateChooseSubjects < ActiveRecord::Migration
  def change
    create_table :choose_subjects do |t|
      t.string :electrical_subject_id
      t.string :studiyear_id

      t.timestamps null: false
    end

    add_index :choose_subjects
  end
end
