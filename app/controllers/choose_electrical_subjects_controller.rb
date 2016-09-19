class ChooseElectricalSubjectsController < ApplicationController
  before_action :set_choose_electrical_subject, only: [:show, :edit, :update, :destroy]

  # GET /choose_electrical_subjects
  # GET /choose_electrical_subjects.json
  def index
    @choose_electrical_subjects = ChooseElectricalSubject.all
  end

  # GET /choose_electrical_subjects/1
  # GET /choose_electrical_subjects/1.json
  def show
  end

  # GET /choose_electrical_subjects/new
  def new
    @choose_electrical_subject = ChooseElectricalSubject.new
  end

  # GET /choose_electrical_subjects/1/edit
  def edit
  end

  # POST /choose_electrical_subjects
  # POST /choose_electrical_subjects.json
  def create
    @choose_electrical_subject = ChooseElectricalSubject.new(choose_electrical_subject_params)

    respond_to do |format|
      if @choose_electrical_subject.save
        format.html { redirect_to @choose_electrical_subject, notice: 'Choose electrical subject was successfully created.' }
        format.json { render :show, status: :created, location: @choose_electrical_subject }
      else
        format.html { render :new }
        format.json { render json: @choose_electrical_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choose_electrical_subjects/1
  # PATCH/PUT /choose_electrical_subjects/1.json
  def update
    respond_to do |format|
      if @choose_electrical_subject.update(choose_electrical_subject_params)
        format.html { redirect_to @choose_electrical_subject, notice: 'Choose electrical subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @choose_electrical_subject }
      else
        format.html { render :edit }
        format.json { render json: @choose_electrical_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choose_electrical_subjects/1
  # DELETE /choose_electrical_subjects/1.json
  def destroy
    @choose_electrical_subject.destroy
    respond_to do |format|
      format.html { redirect_to choose_electrical_subjects_url, notice: 'Choose electrical subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choose_electrical_subject
      @choose_electrical_subject = ChooseElectricalSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choose_electrical_subject_params
      params.require(:choose_electrical_subject).permit(:electrical_subject_ids, :studiyear_id, :user_id)
    end
end
