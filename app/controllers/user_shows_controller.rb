class UserShowsController < ApplicationController
  before_action :find_usershow, only: [:show, :destroy]
  def index
    #@usershows = UserShow.all
    @usershows = current_user.user_shows
  end

  def show
    @review = Review.new
  end

  def new
    @usershow = UserShow.new
  end

  def create
    @usershow = UserShow.new(usershow_params)
    @usershow.user = current_user
    @usershow.save
    redirect_to user_show_index_path(@usershow)
  end

  def destroy
    @usershow.destroy
  end

private
  def find_usershow
    @usershow = UserShow.find(params[:id])
  end

  def usershow_params
    params.require(:usershow).permit(:show_id)
  end
end
