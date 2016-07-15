class RegistrationsController < ApplicationController
  def index
    @registrations = Registration.all
  end

  # GET /registrations/new
  def new
    @registration = Registration.new
  end

  
  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(registration_params)

    respond_to do |format|
      if @registration.save
        format.html { redirect_to admin_registrations_path, notice: 'Registration was successfully created.' }
        format.json { render :show, status: :created, location: @registration }
      else
        format.html { render :new }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def registration_params
    #code
    params.require(:registration).permit(:nama, :tempat_lahir, :tanggal_lahir, :jenis_kelamin, :alamat, :kontak_person, :asal_sekolah, :tahun_lulus, :fakultas_peminat, :jurusan_peminat, :referal, :kode_formulir)
  end

end
