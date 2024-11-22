class AddReferences < ActiveRecord::Migration[8.0]
  def change
    add_reference :results, :user, foreign_key: true
    add_reference :results, :workout, foreign_key: true
    add_reference :rounds, :workout, foreign_key: true
    add_reference :rounds, :exercise, foreign_key: true
  end
end
