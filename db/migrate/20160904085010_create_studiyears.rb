class CreateStudiyears < ActiveRecord::Migration
  def change
    create_table :studiyears do |t|
      t.string :name
      t.boolean :even_odd, default: false

      t.timestamps null: false
    end
  end
end
