class Api::ReviewsController < ApplicationController
  before_action :authenticate_user

  def create
    @review = Review.create(
      user_id: current_user.id,
      item_id: params[:item_id],
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
    @review = Review.find(params[:id])

    @review.rating = params[:rating] || @review.rating
    @review.comment = params[:comment] || @review.comment
    @review.img_url = params[:img_url] || @review.img_url

    if @review.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @review.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    render json: {message: "Review successfully deleted"}
  end
end
