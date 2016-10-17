class ElectricalschedulesubjectsController < ApplicationController
  before_action :set_electricalschedulesubject, only: [:show, :edit, :update, :destroy]

  # GET /electricalschedulesubjects
  # GET /electricalschedulesubjects.json
  def index
    @electricalschedulesubjects = Electricalschedulesubject.order('count asc')
    @title = 'Jadwal Kuliah Teknik Elektro'
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'Jadwal Kuliah Teknik Elektro',
        template: 'electricalschedulesubjects/index.pdf.erb',
        layout: 'pdf.html.erb'
        # render :pdf => 'Kurikulum Teknik Elektro', :layout => 'Kurikulum Teknik Elektro.html'
      end
    end
  end

  # GET /electricalschedulesubjects/1
  # GET /electricalschedulesubjects/1.json
  def show
  end

  # GET /electricalschedulesubjects/new
  def new
    @electricalschedulesubject = Electricalschedulesubject.new
  end

  # GET /electricalschedulesubjects/1/edit
  def edit
  end

  # POST /electricalschedulesubjects
  # POST /electricalschedulesubjects.json
  def create
    @electricalschedulesubject = Electricalschedulesubject.new(electricalschedulesubject_params)

    respond_to do |format|
      if @electricalschedulesubject.save
        format.html { redirect_to @electricalschedulesubject, notice: 'Jadwal Berhasil Dibuat' }
        format.json { render :show, status: :created, location: @electricalschedulesubject }
      else
        format.html { render :new }
        format.json { render json: @electricalschedulesubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electricalschedulesubjects/1
  # PATCH/PUT /electricalschedulesubjects/1.json
  def update
    respond_to do |format|
      if @electricalschedulesubject.update(electricalschedulesubject_params)
        format.html { redirect_to @electricalschedulesubject, notice: 'Jadwal berhasil diperbarui' }
        format.json { render :show, status: :ok, location: @electricalschedulesubject }
      else
        format.html { render :edit }
        format.json { render json: @electricalschedulesubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electricalschedulesubjects/1
  # DELETE /electricalschedulesubjects/1.json
  def destroy
    @electricalschedulesubject.destroy
    respond_to do |format|
      format.html { redirect_to electricalschedulesubjects_url, notice: 'Jadwal berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electricalschedulesubject
      @electricalschedulesubject = Electricalschedulesubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electricalschedulesubject_params
      params.require(:electricalschedulesubject).permit(:electrical_subject_id, :classtime_id, :studiyear_id, :classroom_id, :count, :lecture1_id, :lecture2_id, :lecture3_id, :day)
    end
end
