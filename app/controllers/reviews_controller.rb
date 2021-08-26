class ReviewsController < ApplicationController
  # before_action :find_review, only: [:destroy]
  def create
    @review = Review.new(review_params)
    @review.service = Service.find(params[:service_id])
    @review.user = current_user
      if @review.save
        redirect_to services_path(@review.service)
      else
        render 'services'
      end
  end

  # def destroy
  #   @service = @review.service
  #   @review.destroy
  #   redirect_to services_path(@service)
  # end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
