class AddReferences < ActiveRecord::Migration[8.0]
  def change
    add_reference :results, :users, foreign_key: true
    add_reference :results, :rounds, foreign_key: true
    add_reference :rounds, :workouts, foreign_key: true
    add_reference :rounds, :exercises, foreign_key: true
  end
end
