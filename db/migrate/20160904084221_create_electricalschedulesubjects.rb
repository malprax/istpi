class CreateElectricalschedulesubjects < ActiveRecord::Migration
  def change
    create_table :electricalschedulesubjects do |t|
      t.integer :electrical_subject_id
      t.string :day
      t.integer :classtime_id
      t.integer :studiyear_id
      t.integer :classroom_id
      t.integer :count

      t.integer :lecture1_id
      t.integer :lecture2_id
      t.integer :lecture3_id

      t.timestamps null: false
    end
  end
end
