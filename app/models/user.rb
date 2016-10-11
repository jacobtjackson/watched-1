class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :watched_episodes, -> { order "released_at ASC" }
  has_many :watches, through: :watched_episodes, source: :episode

  def watches_sort
    watches.sort_by { |episode| episode.released_at }
  end
end
