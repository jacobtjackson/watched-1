class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @seasons = Season.all
  end
end
