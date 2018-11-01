class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end
end

def review_params
  params.require(:review).permit(:content, :rating)
end
