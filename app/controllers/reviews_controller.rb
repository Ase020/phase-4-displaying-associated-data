class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc)
    render json: reviews,include: {dog_house: {except: [:created_at, :updated_at]} }, except: [:created_at, :updated_at]
  end

end
