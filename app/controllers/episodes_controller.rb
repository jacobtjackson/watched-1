class EpisodesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @episodes = Episode.order released_at: :desc
  end
end
