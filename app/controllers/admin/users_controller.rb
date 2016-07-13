class Admin::UsersController < Admin::ApplicationController
  before_action :verify_logged_in
  before_action :verify_role
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User Created'
      redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = 'User Updated'
      redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'User Dihapus'
    redirect_to admin_users_path
  end

  def index
    if params[:search]
      @users = User.search(params[:search]).all.order("created_at DESC")
    else
      @users = User.all.order("created_at DESC")
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    #code
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role, :login)
  end
end
