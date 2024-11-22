class RenameUsersToParticipants < ActiveRecord::Migration[8.0]
  def change
    rename_table :users, :participants
  end
end
