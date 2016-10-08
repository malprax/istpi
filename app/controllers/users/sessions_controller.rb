class Users::SessionsController < Admin::ApplicationController
  layout 'users/login'
  def new

  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to users_students_biographies_path, :notice => "Anda Berhasil Login"
    else
      flash.now.alert = "Nama Atau Email Atau Password Tidak Valid"
      render 'new'
    end
  end

  def destroy
    #code
    session[:user_id] = nil
    redirect_to root_url, :notice => "Anda Telah Logout"
  end
end
