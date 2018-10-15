class Api::ReviewsController < ApplicationController

  def create
    @review = Review.create(
      rating: params[:rating],
      comment: params[:comment],
      img_url: params[:img_url]
      )

    if @review.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @review.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end

  def update
    @review.rating = params[:rating] || @review.rating
    @review.comment = review[:comment] || @review.comment
    @review.img_url = review[:img_url] || @review.img_url

    if @review.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @review.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end
end
