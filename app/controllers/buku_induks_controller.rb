class BukuInduksController < ApplicationController
  before_action :set_buku_induk, only: [:show]

  # GET /buku_induks
  # GET /buku_induks.json
  def index
    @buku_induks = BukuInduk.all
  end

  # GET /buku_induks/1
  # GET /buku_induks/1.json
  def show
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buku_induk
      @buku_induk = BukuInduk.find(params[:id])
    end
end
