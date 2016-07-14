class LecturesController < ApplicationController
  before_action :set_lecture, only: [:show]

  # GET /lectures
  # GET /lectures.json
  def index
    @lectures = Lecture.all.order("created_at ASC")
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
