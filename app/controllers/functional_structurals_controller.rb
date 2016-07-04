class FunctionalStructuralsController < ApplicationController
  before_action :set_functional_structural, only: [:show, :edit, :update, :destroy]

  # GET /functional_structurals
  # GET /functional_structurals.json
  def index
    @functional_structurals = FunctionalStructural.all.order('created_at ASC')
  end

  # GET /functional_structurals/1
  # GET /functional_structurals/1.json
  def show
  end

  # GET /functional_structurals/new
  def new
    @functional_structural = FunctionalStructural.new
  end

  # GET /functional_structurals/1/edit
  def edit
  end

  # POST /functional_structurals
  # POST /functional_structurals.json
  def create
    @functional_structural = FunctionalStructural.new(functional_structural_params)

    respond_to do |format|
      if @functional_structural.save
        format.html { redirect_to @functional_structural, notice: 'Functional structural was successfully created.' }
        format.json { render :show, status: :created, location: @functional_structural }
      else
        format.html { render :new }
        format.json { render json: @functional_structural.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /functional_structurals/1
  # PATCH/PUT /functional_structurals/1.json
  def update
    respond_to do |format|
      if @functional_structural.update(functional_structural_params)
        format.html { redirect_to @functional_structural, notice: 'Functional structural was successfully updated.' }
        format.json { render :show, status: :ok, location: @functional_structural }
      else
        format.html { render :edit }
        format.json { render json: @functional_structural.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /functional_structurals/1
  # DELETE /functional_structurals/1.json
  def destroy
    @functional_structural.destroy
    respond_to do |format|
      format.html { redirect_to functional_structurals_url, notice: 'Functional structural was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_functional_structural
      @functional_structural = FunctionalStructural.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def functional_structural_params
      params.require(:functional_structural).permit(:name, :jabatan, :nip, :nidn)
    end
end
