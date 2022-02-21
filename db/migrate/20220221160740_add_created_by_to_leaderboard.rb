class AddCreatedByToLeaderboard < ActiveRecord::Migration[7.0]
  def change
    create_table :leaderboard_activities do |t|
      t.integer :participant_user, null: false
      t.integer :activity_id, null: false
    end
  end
end
