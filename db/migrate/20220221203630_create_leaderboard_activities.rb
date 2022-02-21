class CreateLeaderboardActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :leaderboard_activities do |t|
      t.references :leaderboard, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
