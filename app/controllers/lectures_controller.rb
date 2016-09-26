class LecturesController < ApplicationController
  before_action :set_lecture, only: [:show]

  # GET /lectures
  # GET /lectures.json
  def index
    if params[:search]
        @lectures = Lecture.paginate(:page => params[:page], per_page: 10).search(params[:search]).order('fakultas desc')
    else
        @lectures = Lecture.all.paginate(:page => params[:page], per_page: 10).order('fakultas desc')
    end
  end

  def show
    #code
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture
      @lecture = Lecture.find(params[:id])
    end
end
