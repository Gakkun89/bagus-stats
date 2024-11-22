class CreateRounds < ActiveRecord::Migration[8.0]
  def change
    create_table :rounds do |t|
      t.integer :number
      t.integer :reps
      t.integer :order
      t.text :notes

      t.timestamps
    end
  end
end
