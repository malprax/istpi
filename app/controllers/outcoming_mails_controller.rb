class OutcomingMailsController < ApplicationController
  before_action :set_outcoming_mail, only: [:show, :edit, :update, :destroy]

  # GET /outcoming_mails
  # GET /outcoming_mails.json
  def index
    @outcoming_mails = OutcomingMail.all
  end

  # GET /outcoming_mails/1
  # GET /outcoming_mails/1.json
  def show
  end

  # GET /outcoming_mails/new
  def new
    @outcoming_mail = OutcomingMail.new
  end

  # GET /outcoming_mails/1/edit
  def edit
  end

  # POST /outcoming_mails
  # POST /outcoming_mails.json
  def create
    @outcoming_mail = OutcomingMail.new(outcoming_mail_params)

    respond_to do |format|
      if @outcoming_mail.save
        format.html { redirect_to @outcoming_mail, notice: 'Outcoming mail was successfully created.' }
        format.json { render :show, status: :created, location: @outcoming_mail }
      else
        format.html { render :new }
        format.json { render json: @outcoming_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outcoming_mails/1
  # PATCH/PUT /outcoming_mails/1.json
  def update
    respond_to do |format|
      if @outcoming_mail.update(outcoming_mail_params)
        format.html { redirect_to @outcoming_mail, notice: 'Outcoming mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @outcoming_mail }
      else
        format.html { render :edit }
        format.json { render json: @outcoming_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outcoming_mails/1
  # DELETE /outcoming_mails/1.json
  def destroy
    @outcoming_mail.destroy
    respond_to do |format|
      format.html { redirect_to outcoming_mails_url, notice: 'Outcoming mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outcoming_mail
      @outcoming_mail = OutcomingMail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outcoming_mail_params
      params.require(:outcoming_mail).permit(:address, :date, :abouts, :nomor_petunjuk)
    end
end
