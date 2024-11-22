class CreateWorkouts < ActiveRecord::Migration[8.0]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.integer :type
      t.string :name
      t.integer :time_cap

      t.timestamps
    end
  end
end
