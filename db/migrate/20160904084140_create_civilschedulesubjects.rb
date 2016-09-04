class CreateCivilschedulesubjects < ActiveRecord::Migration
  def change
    create_table :civilschedulesubjects do |t|
      t.integer :civil_subject_id
      t.integer :lecture1_id
      t.integer :lecture2_id
      t.integer :lecture3_id
      t.string :day
      t.integer :time_id
      t.integer :year_id
      t.integer :room_id
      t.integer :count

      t.timestamps null: false
    end
  end
end
