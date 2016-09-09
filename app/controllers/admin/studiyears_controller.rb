class Admin::StudiyearsController < ApplicationController
  before_action :set_studiyear, only: [:show, :edit, :update, :destroy]

  # GET /studiyears
  # GET /studiyears.json
  def index
    @studiyears = Studiyear.all
  end

  # GET /studiyears/1
  # GET /studiyears/1.json
  def show
  end

  # GET /studiyears/new
  def new
    @studiyear = Studiyear.new
  end

  # GET /studiyears/1/edit
  def edit
  end

  # POST /studiyears
  # POST /studiyears.json
  def create
    @studiyear = Studiyear.new(studiyear_params)

    respond_to do |format|
      if @studiyear.save
        format.html { redirect_to admin_studiyears_path, notice: 'Tahun ajaran berhasil dibuat' }
        format.json { render :show, status: :created, location: @studiyear }
      else
        format.html { render :new }
        format.json { render json: @studiyear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studiyears/1
  # PATCH/PUT /studiyears/1.json
  def update
    respond_to do |format|
      if @studiyear.update(studiyear_params)
        format.html { redirect_to admin_studiyears_path, notice: 'Tahun ajaran berhasil diperbarui' }
        format.json { render :show, status: :ok, location: @studiyear }
      else
        format.html { render :edit }
        format.json { render json: @studiyear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studiyears/1
  # DELETE /studiyears/1.json
  def destroy
    @studiyear.destroy
    respond_to do |format|
      format.html { redirect_to admin_studiyears_url, notice: 'Tahun ajaran berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studiyear
      @studiyear = Studiyear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studiyear_params
      params.require(:studiyear).permit(:name, :even_odd)
    end
end
