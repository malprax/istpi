class CreateUsersCivilSubjects < ActiveRecord::Migration
  def change
    create_table :users_civil_subjects do |t|
      t.belongs_to :user, index: true
      t.belongs_to :civil_subject, index: true
      t.timestamps null: false
    end
  end
end
