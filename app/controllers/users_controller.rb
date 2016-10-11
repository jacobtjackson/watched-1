class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @seasons = Season.all
    @season = Season.find_by(params[:id])
  end
end
