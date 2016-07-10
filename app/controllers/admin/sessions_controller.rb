class Admin::SessionsController < Admin::ApplicationController
  layout 'admin/login'
  def new

  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to admin_registrations_path, :notice => "Anda Berhasil Login"
    else
      flash.now.alert = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    #code
    session[:user_id] = nil
    redirect_to admin_login_path, :notice => "Anda Telah Keluar"

  end
end
