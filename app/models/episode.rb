class Episode < ApplicationRecord
  belongs_to :season
  has_many :watched_episodes
  has_many :watched_by, through: :watched_episodes, source: :user
end
