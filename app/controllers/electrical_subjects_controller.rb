class ElectricalSubjectsController < ApplicationController
  before_action :set_electrical_subject, only: [:show, :edit, :update, :destroy]

  # GET /electrical_subjects
  # GET /electrical_subjects.json
  def index
    @electrical_subjects = ElectricalSubject.all
  end

  # GET /electrical_subjects/1
  # GET /electrical_subjects/1.json
  def show
  end

  # GET /electrical_subjects/new
  def new
    @electrical_subject = ElectricalSubject.new
  end

  # GET /electrical_subjects/1/edit
  def edit
  end

  # POST /electrical_subjects
  # POST /electrical_subjects.json
  def create
    @electrical_subject = ElectricalSubject.new(electrical_subject_params)

    respond_to do |format|
      if @electrical_subject.save
        format.html { redirect_to @electrical_subject, notice: 'Electrical subject was successfully created.' }
        format.json { render :show, status: :created, location: @electrical_subject }
      else
        format.html { render :new }
        format.json { render json: @electrical_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electrical_subjects/1
  # PATCH/PUT /electrical_subjects/1.json
  def update
    respond_to do |format|
      if @electrical_subject.update(electrical_subject_params)
        format.html { redirect_to @electrical_subject, notice: 'Electrical subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @electrical_subject }
      else
        format.html { render :edit }
        format.json { render json: @electrical_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electrical_subjects/1
  # DELETE /electrical_subjects/1.json
  def destroy
    @electrical_subject.destroy
    respond_to do |format|
      format.html { redirect_to electrical_subjects_url, notice: 'Electrical subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
    html = render_to_string(:action => :index, :layout => "pdf_layout.html")
    pdf = WickedPdf.new.pdf_from_string(html)
    send_data(pdf,
    :filename => "Kurikulum Teknik Elektro.pdf",
    :disposition => 'attachment')

    #code
    # @electrical_subjects = ElectricalSubject.all
    # respond_to do |format|
    #   format.html
    #   format.pdf do
    #     pdf = KurikulumPdf.new(@electrical_subjects)
    #     send_data pdf.render,
    #     type: "application/pdf",
    #     disposition: "inline",
    #     filename: "Kurikulum_Teknik_Elektro.pdf"
    #   end
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electrical_subject
      @electrical_subject = ElectricalSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electrical_subject_params
      params.require(:electrical_subject).permit(:name, :credit, :code, :category, :semester_id)
    end
end
