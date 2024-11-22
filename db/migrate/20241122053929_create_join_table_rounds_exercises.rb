class CreateJoinTableRoundsExercises < ActiveRecord::Migration[8.0]
  def change
    create_join_table :rounds, :exercises do |t|
      # t.index [:round_id, :exercise_id]
      # t.index [:exercise_id, :round_id]
    end
  end
end
