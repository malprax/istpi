class FunctionalStructuralsController < ApplicationController
  before_action :set_functional_structural, only: [:show]

  # GET /functional_structurals
  # GET /functional_structurals.json
  def index
    @functional_structurals = FunctionalStructural.all.order('created_at ASC')
  end

  # GET /functional_structurals/1
  # GET /functional_structurals/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_functional_structural
      @functional_structural = FunctionalStructural.find(params[:id])
    end
end
