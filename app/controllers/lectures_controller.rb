class LecturesController < ApplicationController
  before_action :set_lecture, only: [:show]

  # GET /lectures
  # GET /lectures.json
  def index
    @lectures = Lecture.all.paginate(:page => params[:page], per_page: 10).order('created_at DESC')
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
