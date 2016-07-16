require 'prawn'
class RegistrationsController < ApplicationController
  # before_action :verify_logged_in
  before_action :set_registration, only: [:show]

  # GET /registrations
  # GET /registrations.json
  def index
    if params[:search]
        @registrations = Registration.search(params[:search]).order('created_at DESC')
    else
        @registrations = Registration.all.paginate(:page => params[:page], per_page: 10).order('created_at DESC')
    end
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = RegisterPdf.new(@registration)
        send_data pdf.render,
        type: "application/pdf",
        disposition: "inline",
        filename: "Formulir Calon Mahasiswa ISTPI atas nama #{@registration.nama}.pdf"
      end
    end
  end

  # GET /registrations/new
  def new
    @registration = Registration.new
  end


  def create
    @registration = Registration.new(registration_params)

    respond_to do |format|
      if @registration.save
        format.html { redirect_to admin_calon_mahasiswa_index_path, notice: 'Data Calon Berhasil Di Buat.' }
        format.json { render :show, status: :created, location: @registration }
      else
        format.html { render :new }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end



  def download_pdf
    #code
    @registration = Registration.find_by_kode_formulir(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = RegistrationPdf.new(@registration)
        send_data pdf.render,
        type: "application/pdf",
        disposition: "inline",
        filename: "Formulir Calon Mahasiswa ISTPI atas nama #{@registration.full_name}.pdf"
      end
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find_by_kode_formulir(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_params
      params.require(:registration).permit(:nama, :tempat_lahir, :tanggal_lahir, :jenis_kelamin, :alamat, :kontak_person, :asal_sekolah, :tahun_lulus, :fakultas_peminat, :jurusan_peminat, :referal, :kode_formulir)
    end
end
