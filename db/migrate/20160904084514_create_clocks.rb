class CreateClocks < ActiveRecord::Migration
  def change
    create_table :clocks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
