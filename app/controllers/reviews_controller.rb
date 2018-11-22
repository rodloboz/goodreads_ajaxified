class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
    @review.book = @book
    @review.user = current_user

    if @review.save
      respond_to do |format|
        format.js
        format.html { redirect_to @book }
      end
    else
      respond_to do |format|
        format.js
        format.html { render 'books/show'}
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
