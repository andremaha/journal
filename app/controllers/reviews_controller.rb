class ReviewsController < ApplicationController

  http_basic_authenticate_with name: 'andrey', password: 'secret96',
    only: :destroy

  def create
    @entry = Entry.find params[:entry_id]
    @review = @entry.reviews.create review_params
    redirect_to entry_path @entry
  end

  def destroy
    @entry = Entry.find params[:entry_id]
    @review = @entry.reviews.find params[:id]
    @review.destroy

    redirect_to entry_path @entry
  end
  private
    def review_params
      params.require(:review).permit(:thoughts)
    end
end
