class UserShowController < ApplicationController
  def index
    @usershow = UserShow.all
    # @usershow = current_user.user_shows
  end

  def show
    @usershow = UserShow.find(params[:id])
  end

  def create
  end

  def destroy
  end
end
