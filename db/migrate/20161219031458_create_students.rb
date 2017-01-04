class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :additional

      t.timestamps null: false
    end
  end
end
