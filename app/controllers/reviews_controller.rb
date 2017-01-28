class ReviewsController < ApplicationController
  before_action :find_user_show
  before_action :find_review, only: [:consistent, :show, :edit, :update, :destroy]

  def leader
    # this should be rendered on the user_show top view??
    # list of durable series based on number of 4-5 star ratings(king of the hill)
    # this is where the top method goes
    # `group` needs an agregate function

    # @review = Review.where(rating: 5).group(:user_show_id).order('count_id desc').count('id')
    # @review = Review.where(rating: 4).group(:user_show_id).order("count_id desc").count("id")
    # ^ finds all ratings of 4/5 and groups them 2gther by user_show_id

    # @review = Review.select(:rating, :user_show_id).group(:user_show_id).order("count_id desc").count("id")
    # ^ this selects rating and usershows and groups them user_show_ids, gives a total number of reviews

    # @review = Review.group(:user_show_id).sum(:rating)
    # ^this totals all rating points 1-5

    # @review = Review.where(rating: 5).group(:user_show_id).count(:rating)
    # ^only counts the number of 5 star ratings per user_show_id

    # @review = Review.where(rating:[5]).group(:user_show_id).limit(3).sum(:rating)
    # @review = Review.where(rating: 5).group(:user_show_id).sum(:rating)
    # ^the above two queries are the same as below..
    @reviews = Review.group(:user_show_id).where(rating:5).sum(:rating)
    # ^ this totals all ratings where the rating is 5
    # ^^ returns `HASH` @reviews = {key => value} as: {43=>5}

    # @reviews.each do |key,value|
    #   @usershow = UserShow.find(key)
    # end
    # ^ iteration is executed in the view file

    # raise
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = @usershow.reviews.build(review_params)
    if @review.save
      redirect_to user_show_path(@usershow)
      # redirect_to user_shows_path(@usershow)
    else
      render 'user_shows/show'
    end

  # setup for ajax:
  #   @review = @usershow.reviews.build(review_params)
  #   if @review.save
  #     respond_to do |format|
  #       format.html {redirect_to user_show_path(@usershow)}
  #       # will render `app/views/reviews/create.js.erb`
  #       format.js
  #     # end of the respond_to do
  #     end
  #   else
  #     respond_to do |format|
  #       format.html {render 'user_shows/show'}
  #       # will render `idem`
  #       format.js
  #     # end of the respond_do
  #     end
  #   # end of `if` statement
  #   end
  end # end of create

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
