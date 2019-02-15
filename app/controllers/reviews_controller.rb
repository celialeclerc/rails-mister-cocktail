class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @cocktail = Cocktail.find(params[:id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render "/cocktails"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :cocktail_id)
  end
end
