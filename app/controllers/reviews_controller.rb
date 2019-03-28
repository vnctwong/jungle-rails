class ReviewsController < ApplicationController
  before_filter :logged_in
  def create 

    @review = Review.create(allowed_params)
    redirect_to product_path(@review.product_id)

  end	

  def logged_in
    unless current_user
      redirect_to login_path
    end
  end

   private

    def allowed_params
      params.require(:review).permit(:rating, :description, :user_id, :product_id)
    end

end