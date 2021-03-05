class ReviewsController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new
  end
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_param)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def review_param
    params.require(:review).permit(:rating, :content)
  end
end
