class RenameParticipantUsersTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :participant_users, :users
  end
end
