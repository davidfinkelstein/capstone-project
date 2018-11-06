class Api::ItemsController < ApplicationController
  # before_action :authenticate_user, except: [:show]

  def create
    @item = Item.create(
      list_id: params[:list_id],
      name: params[:name],
      price: params[:price],
      description: params[:description],
      website_url: params[:website_url],
      amazon_url: params[:amazon_url],
      img_url: params[:img_url]
      )
    if @item.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @item.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end

  def show
    @item = Item.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @item = Item.find(params[:id])

    @item.list_id = params[:list_id] || @item.list_id
    @item.name = params[:name] || @item.name
    @item.price = params[:price] || @item.price
    @item.description = params[:description] || @item.description
    @item.website_url = params[:website_url] || @item.website_url
    @item.amazon_url = params[:amazon_url] || @item.amazon_url
    @item.img_url = params[:image_url] || @item.img_url
  
    if @item.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @item.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end
end
