class WatchedEpisode < ApplicationRecord
  belongs_to :episode
  belongs_to :user
end
