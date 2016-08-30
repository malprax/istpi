class CivilSubjectsController < ApplicationController
  before_action :set_civil_subject, only: [:show, :edit, :update, :destroy]

  # GET /civil_subjects
  # GET /civil_subjects.json
  def index
    @civil_subjects = CivilSubject.all
  end

  # GET /civil_subjects/1
  # GET /civil_subjects/1.json
  def show
  end

  # GET /civil_subjects/new
  def new
    @civil_subject = CivilSubject.new
  end

  # GET /civil_subjects/1/edit
  def edit
  end

  # POST /civil_subjects
  # POST /civil_subjects.json
  def create
    @civil_subject = CivilSubject.new(civil_subject_params)

    respond_to do |format|
      if @civil_subject.save
        format.html { redirect_to civil_subjects_path, notice: 'Civil subject was successfully created.' }
        format.json { render :show, status: :created, location: @civil_subject }
      else
        format.html { render :new }
        format.json { render json: @civil_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /civil_subjects/1
  # PATCH/PUT /civil_subjects/1.json
  def update
    respond_to do |format|
      if @civil_subject.update(civil_subject_params)
        format.html { redirect_to civil_subjects_path, notice: 'Civil subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @civil_subject }
      else
        format.html { render :edit }
        format.json { render json: @civil_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civil_subjects/1
  # DELETE /civil_subjects/1.json
  def destroy
    @civil_subject.destroy
    respond_to do |format|
      format.html { redirect_to civil_subjects_url, notice: 'Civil subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_civil_subject
      @civil_subject = CivilSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def civil_subject_params
      params.require(:civil_subject).permit(:name, :credit, :code, :category, :semester)
    end
end
