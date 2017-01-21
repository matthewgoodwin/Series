class ReviewsController < ApplicationController
  before_action :find_user_show
  before_action :find_review, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = @usershow.reviews.build(review_params)
    if @review.save
      redirect_to user_shows_path(@usershow)
    else
      render 'user_shows/show'
    end

  end

  def edit
  end

  def update
    @review.update(review_params)
  end

  def destroy
    @review.destroy
  end

private
  def find_review
    @review = Review.find(params[:id])
  end

  def find_user_show
    @usershow = UserShow.find(params[:user_show_id])
  end

  def review_params
    params.require(:review).permit(:phrase, :rating, :standout)
  end
end
