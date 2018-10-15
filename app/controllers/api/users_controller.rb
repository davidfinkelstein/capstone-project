class Api::UsersController < ApplicationController
  def create
    @users = User.create(
        name: params[:name],
        email: params[:email],
        password_digest: params[:password_digest],
        birthday: params[:birthday]
      )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @user = User.find(params[:id]) #find is only for id, find_by is for any variable

    #attribute writer

    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.password_digest = params[:password_digest] || @user.password_digest
    @user.birthday = params[:birthday] || @user.birthday

    if @user.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end
end
