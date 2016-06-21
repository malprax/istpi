class BukuInduksController < ApplicationController
  before_action :set_buku_induk, only: [:show, :edit, :update, :destroy]

  # GET /buku_induks
  # GET /buku_induks.json
  def index
    @buku_induks = BukuInduk.all
  end

  # GET /buku_induks/1
  # GET /buku_induks/1.json
  def show
  end

  # GET /buku_induks/new
  def new
    @buku_induk = BukuInduk.new
  end

  # GET /buku_induks/1/edit
  def edit
  end

  # POST /buku_induks
  # POST /buku_induks.json
  def create
    @buku_induk = BukuInduk.new(buku_induk_params)

    respond_to do |format|
      if @buku_induk.save
        format.html { redirect_to @buku_induk, notice: 'Buku induk was successfully created.' }
        format.json { render :show, status: :created, location: @buku_induk }
      else
        format.html { render :new }
        format.json { render json: @buku_induk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buku_induks/1
  # PATCH/PUT /buku_induks/1.json
  def update
    respond_to do |format|
      if @buku_induk.update(buku_induk_params)
        format.html { redirect_to @buku_induk, notice: 'Buku induk was successfully updated.' }
        format.json { render :show, status: :ok, location: @buku_induk }
      else
        format.html { render :edit }
        format.json { render json: @buku_induk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buku_induks/1
  # DELETE /buku_induks/1.json
  def destroy
    @buku_induk.destroy
    respond_to do |format|
      format.html { redirect_to buku_induks_url, notice: 'Buku induk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buku_induk
      @buku_induk = BukuInduk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buku_induk_params
      params.require(:buku_induk).permit(:no_stambuk, :nama, :jenis_kelamin, :tempat_lahir, :tanggal_lahir, :bangsa, :agama, :alamat, :ijazah_terakhir, :nama_ayah, :nama_ibu, :nama_wali, :pekerjaan_orangtua_wali, :tanggal_akademik, :status_akademik, :semester_akademik, :foto)
    end
end
