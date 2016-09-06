class Admin::CivilschedulesubjectsController < ApplicationController
  before_action :set_civilschedulesubject, only: [:show, :edit, :update, :destroy]

  # GET /civilschedulesubjects
  # GET /civilschedulesubjects.json
  def index
    @civilschedulesubjects = Civilschedulesubject.all
  end

  # GET /civilschedulesubjects/1
  # GET /civilschedulesubjects/1.json
  def show
  end

  # GET /civilschedulesubjects/new
  def new
    @civilschedulesubject = Civilschedulesubject.new
  end

  # GET /civilschedulesubjects/1/edit
  def edit
  end

  # POST /civilschedulesubjects
  # POST /civilschedulesubjects.json
  def create
    @civilschedulesubject = Civilschedulesubject.new(civilschedulesubject_params)

    respond_to do |format|
      if @civilschedulesubject.save
        format.html { redirect_to @civilschedulesubject, notice: 'Civilschedulesubject was successfully created.' }
        format.json { render :show, status: :created, location: @civilschedulesubject }
      else
        format.html { render :new }
        format.json { render json: @civilschedulesubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civilschedulesubjects/1
  # PATCH/PUT /civilschedulesubjects/1.json
  def update
    respond_to do |format|
      if @civilschedulesubject.update(civilschedulesubject_params)
        format.html { redirect_to @civilschedulesubject, notice: 'Civilschedulesubject was successfully updated.' }
        format.json { render :show, status: :ok, location: @civilschedulesubject }
      else
        format.html { render :edit }
        format.json { render json: @civilschedulesubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civilschedulesubjects/1
  # DELETE /civilschedulesubjects/1.json
  def destroy
    @civilschedulesubject.destroy
    respond_to do |format|
      format.html { redirect_to civilschedulesubjects_url, notice: 'Civilschedulesubject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civilschedulesubject
      @civilschedulesubject = Civilschedulesubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civilschedulesubject_params
      params.require(:civilschedulesubject).permit(:civil_subject_id, :lecture1_id, :lecture2_id, :lecture3_id, :day, :time_id, :year_id, :room_id, :count)
    end
end
