class ChangeTypeToVariety < ActiveRecord::Migration[8.0]
  def change
    rename_column :workouts, :type, :variety
  end
end
