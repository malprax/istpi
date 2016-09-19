class CreateUsersElectricalSubjects < ActiveRecord::Migration
  def change
    create_table :users_electrical_subjects do |t|
      t.belongs_to :user, index: true
      t.belongs_to :electrical_subject, index: true


      t.timestamps null: false
    end
  end
end
