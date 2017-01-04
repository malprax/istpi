class CreateStudiyears < ActiveRecord::Migration
  def change
    create_table :studiyears do |t|
      t.string :name
      t.string :even_odd
      t.boolean :status

      t.timestamps null: false
    end
  end
end
