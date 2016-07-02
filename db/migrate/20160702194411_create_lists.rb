class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :number
      t.string :court
      t.string :macro
      t.date :macro_period
      t.string :phase
      t.date :phase_period
      t.boolean :monitored

      t.timestamps null: false
    end
  end
end
