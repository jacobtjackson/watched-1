class EpisodesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @episodes = Episode.includes(:season).order released_at: :desc
  end

  def watched
    @episode = Episode.find(params[:id])
      unless current_user.watches.include?(@episode)
        current_user.watches << @episode
        flash[:notice] = "You marked this episode as watched."
        redirect_to root_path
      else
        flash[:alert] = "Oops, something went wrong. Try again."
        redirect_to root_path
      end
  end

  def unwatched
    @episode = Episode.find(params[:id])
    if current_user.watches.include?(@episode)
      current_user.watches.delete(@episode)
      flash[:notice] = "You marked this episode as unwatched."
      redirect_to root_path
    else
      flash[:alert] = "Oops, something went wrong. Try again."
      redirect_to root_path
    end
  end
end
