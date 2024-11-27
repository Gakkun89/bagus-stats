class AddRoundNumberToWorkouts < ActiveRecord::Migration[8.0]
  def change
    add_column :workouts, :round_number, :integer
  end
end
