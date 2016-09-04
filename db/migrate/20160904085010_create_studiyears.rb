class CreateStudiyears < ActiveRecord::Migration
  def change
    create_table :studiyears do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
