class UsersController < ApplicationController
  def index
  end

  def new
   # @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to articles_path
    else
      render 'new'
    end

  end

  def show
    @user = User.find_by(id: session[:user_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
