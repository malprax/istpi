class CreateClasstimes < ActiveRecord::Migration
  def change
    create_table :classtimes do |t|
      t.string :time

      t.timestamps null: false
    end
  end
end
