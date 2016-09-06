class Admin::ElectricalschedulesubjectsController < ApplicationController
  before_action :set_electricalschedulesubject, only: [:show, :edit, :update, :destroy]

  # GET /electricalschedulesubjects
  # GET /electricalschedulesubjects.json
  def index
    @electricalschedulesubjects = Electricalschedulesubject.all
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
        format.html { redirect_to @electricalschedulesubject, notice: 'Electricalschedulesubject was successfully created.' }
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
        format.html { redirect_to @electricalschedulesubject, notice: 'Electricalschedulesubject was successfully updated.' }
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
      format.html { redirect_to electricalschedulesubjects_url, notice: 'Electricalschedulesubject was successfully destroyed.' }
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
      params.require(:electricalschedulesubject).permit(:civil_subject_id, :lecture1_id, :lecture2_id, :lecture3_id, :day, :time_id, :year_id, :room_id, :count)
    end
end
