class Admin::ChooseElectricalSubjectsController < ApplicationController
  before_action :set_choose_electrical_subject, only: [:show, :edit, :update, :destroy]

  # GET /choose_electrical_subjects
  # GET /choose_electrical_subjects.json
  def index
    @choose_electrical_subjects = ChooseElectricalSubject.all
  end

  # GET /choose_electrical_subjects/1
  # GET /choose_electrical_subjects/1.json
  def show
    @user = current_user
    @choose_electrical_subjects = ChooseElectricalSubject.all
    @choose_electrical_subject = @user.choose_electrical_subjects.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = KrsPdf.new(@choose_electrical_subject)
        send_data pdf.render,
        type: "application/pdf",
        disposition: "inline",
        # filename: "KRS #{@choose_electrical_subject.studi_year.name} Semester #{@choose_electrical_subject.studi_year.even_odd} - #{@choose_electrical_subject.user.name.titleize}.pdf"
        filename: "KRS #{@choose_electrical_subject.user.name.titleize}.pdf"
      end
    end
  end

  # GET /choose_electrical_subjects/new
  def new
    # @choose_electrical_subject = ChooseElectricalSubject.new
    @user = current_user
    @choose_electrical_subject = @user.choose_electrical_subjects.build

  end

  # GET /choose_electrical_subjects/1/edit
  def edit
  end

  # POST /choose_electrical_subjects
  # POST /choose_electrical_subjects.json
  def create
    @choose_electrical_subject = ChooseElectricalSubject.new(choose_electrical_subject_params)
    @choose_electrical_subject.user_id = current_user.id if current_user
    @choose_electrical_subject.studiyear_id = current_studiyear.id
    respond_to do |format|
      if @choose_electrical_subject.save
        format.html { redirect_to admin_user_choose_electrical_subjects_path, notice: 'Choose electrical subject was successfully created.' }
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
        format.html { redirect_to admin_user_choose_electrical_subjects_path, notice: 'Choose electrical subject was successfully updated.' }
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
      format.html { redirect_to admin_user_choose_electrical_subjects_url, notice: 'Choose electrical subject was successfully destroyed.' }
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
      params.require(:choose_electrical_subject).permit(:studiyear_id, :user_id, :semester_aktif, :electrical_subject_ids => [])
    end
end
