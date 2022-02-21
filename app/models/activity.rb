class Activity < ApplicationRecord
  belongs_to :user
  has_many :leaderboard_activities
  has_many :leaderboards, through: :leaderboard_activities
  
  enum status: {
    pending: 0,
    approved: 1
  }

  # def approve
  #   update! status: 1
  # end
end
