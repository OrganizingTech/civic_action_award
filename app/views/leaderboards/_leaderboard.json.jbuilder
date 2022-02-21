json.extract! leaderboard, :id, :title, :description, :created_at, :updated_at
json.url leaderboard_url(leaderboard, format: :json)
