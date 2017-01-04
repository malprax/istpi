class CreateChooseElectricalSubjects < ActiveRecord::Migration
  def change
    create_table :choose_electrical_subjects do |t|
      t.integer :electrical_subject_id
      t.integer :studiyear_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
