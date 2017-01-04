class Admin::SessionsController < Admin::ApplicationController
  layout 'admin/login'
  def new

  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to admin_calon_mahasiswa_index_path, :notice => "Anda Berhasil Login"
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
