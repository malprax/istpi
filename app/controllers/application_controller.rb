class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_studiyear
  helper_method :current_study


  private
  def current_user
    #code
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_studiyear
    #code
    @studiyear = Studiyear.find_by_status(true)
    #some change
  end

  def current_study
    #code
    # @choose_electrical_subject = ChooseElectricalSubject.find(params[:id])
    @current_study = ChooseElectricalSubject.where(user_id: current_user.id).first
  end

  def verify_logged_in
    #code
    unless current_user
        redirect_to admin_login_path, notice: "Anda Tidak Punya Akses, Silahkan Login Dulu"
    end
  end
end
