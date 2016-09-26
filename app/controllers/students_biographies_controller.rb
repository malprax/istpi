class StudentsBiographiesController < ApplicationController
  before_action :set_students_biography, only: [:show, :edit, :update, :destroy]

  # GET /students_biographies
  # GET /students_biographies.json
  def index
    if params[:search]
        @students_biographies = StudentsBiography.paginate(:page => params[:page], per_page: 10).search(params[:search]).order('created_at asc')
    else
        @students_biographies = StudentsBiography.all.paginate(:page => params[:page], per_page: 10).order('created_at asc')
    end
  end

  # GET /students_biographies/1
  # GET /students_biographies/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_students_biography
      @students_biography = StudentsBiography.find(params[:id])
    end
end
