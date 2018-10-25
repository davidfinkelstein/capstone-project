class Api::ListsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @lists = List.all.order(name: :asc)

    if params[:name]
      @lists = List.where("name LIKE ?", "%#{params[:name]}%")
    elsif params[:category]
      @lists = List.where("category LIKE ?", "%#{params[:category]}")
    end

    render 'index.json.jbuilder'
  end

  def create 
    @list = List.create(
      name: params[:name],
      category: params[:category]
      )
    if @list.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @list.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end

  def show    # QUESTION - SHOULD I KEEP PARAMS ID?
    @list = List.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update  # Question - SHOULD I KEEP PARAMS ID?
    @list = List.find(params[:id])

    @list.name = params[:name] || @list.name
    @list.category = params[:category] || @list.category

    if @list.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @list.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end
end
