class Leaderboard < ApplicationRecord
  has_many :leaderboard_activities
  has_many :activities, through: :leaderboard_activities
end
