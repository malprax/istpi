class Admin::UsersController < Admin::ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
  def user_params
    #code
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
