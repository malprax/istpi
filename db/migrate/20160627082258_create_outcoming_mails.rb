class CreateOutcomingMails < ActiveRecord::Migration
  def change
    create_table :outcoming_mails do |t|
      t.string :address
      t.string :date
      t.string :abouts
      t.string :nomor_petunjuk

      t.timestamps null: false
    end
  end
end
