class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :start, foreign_key: true
      t.integer :end, foreign_key: true
      t.datetime :depart
      t.string :duration


      t.timestamps
    end
  end
end
