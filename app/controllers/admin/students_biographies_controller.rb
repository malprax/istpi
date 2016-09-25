class Admin::StudentsBiographiesController < Admin::ApplicationController
  before_action :verify_logged_in
  before_action :set_students_biography, only: [:show, :edit, :update, :destroy]

  # GET /students_biographies
  # GET /students_biographies.json
  def index
    if params[:search]
        @students_biographies = StudentsBiography.paginate(:page => params[:page], per_page: 10).search(params[:search]).order('created_at DESC')
    else
        @students_biographies = StudentsBiography.all.paginate(:page => params[:page], per_page: 10).order('created_at DESC')
    end
  end

  # GET /students_biographies/1
  # GET /students_biographies/1.json
  def show
  end

  # GET /students_biographies/new
  def new
    @students_biography = StudentsBiography.new
  end

  # GET /students_biographies/1/edit
  def edit
  end

  # POST /students_biographies
  # POST /students_biographies.json
  def create
    @students_biography = StudentsBiography.new(students_biography_params)

    respond_to do |format|
      if @students_biography.save
        format.html { redirect_to admin_students_biographies_path, notice: 'Students biography was successfully created.' }
        format.json { render :show, status: :created, location: @students_biography }
      else
        format.html { render :new }
        format.json { render json: @students_biography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students_biographies/1
  # PATCH/PUT /students_biographies/1.json
  def update
    respond_to do |format|
      if @students_biography.update(students_biography_params)
        format.html { redirect_to admin_students_biographies_path, notice: 'Students biography was successfully updated.' }
        format.json { render :show, status: :ok, location: @students_biography }
      else
        format.html { render :edit }
        format.json { render json: @students_biography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students_biographies/1
  # DELETE /students_biographies/1.json
  def destroy
    @students_biography.destroy
    respond_to do |format|
      format.html { redirect_to admin_students_biographies_url, notice: 'Students biography was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_students_biography
      @students_biography = StudentsBiography.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def students_biography_params
      params.require(:students_biography).permit(:full_name, :stambuk, :jenis_kelamin, :tempat_lahir, :tanggal_lahir, :agama, :alamat_rumah_rt, :alamat_rumah_rw, :alamat_rumah_kota, :alamat_rumah_kabupaten, :alamat_rumah_kodepos, :siswa_no_kontak, :user_id, :ayah_nama, :ayah_tempat_lahir, :ayah_tanggal_lahir, :ayah_no_kontak, :ayah_alamat_rt, :ayah_alamat_rw, :ayah_alamat_kota, :ayah_alamat_kabupaten, :ayah_alamat_kodepos, :ayah_pendidikan_terakhir, :ayah_pekerjaan, :ibu_nama, :ibu_tempat_lahir, :ibu_tanggal_lahir, :ibu_no_kontak, :ibu_alamat_rt, :ibu_alamat_rw, :ibu_alamat_kota, :ibu_alamat_kabupaten, :ibu_alamat_kodepos, :ibu_pendidikan_terakhir, :ibu_pekerjaan, :wali_nama, :wali_tempat_lahir, :wali_tanggal_lahir, :wali_no_kontak, :wali_alamat_rt, :wali_alamat_rw, :wali_alamat_kota, :wali_alamat_kabupaten, :wali_alamat_kodepos, :wali_pendidikan_terakhir, :wali_pekerjaan, :fakultas, :jurusan, :sekolah_sd, :sekolah_sd_tahun_lulus, :sekolah_smp_tahun_lulus, :sekolah_smu_tahun_lulus, :perguruan_tinggi_asal, :perguruan_tinggi_asal_tahun_terakhir)
    end
end
