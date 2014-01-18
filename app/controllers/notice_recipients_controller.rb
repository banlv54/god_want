class NoticeRecipientsController < ApplicationController
  before_action :set_notice_recipient, only: [:show, :edit, :update, :destroy]

  # GET /notice_recipients
  # GET /notice_recipients.json
  def index
    @notice_recipients = NoticeRecipient.all
  end

  # GET /notice_recipients/1
  # GET /notice_recipients/1.json
  def show
  end

  # GET /notice_recipients/new
  def new
    @notice_recipient = NoticeRecipient.new
  end

  # GET /notice_recipients/1/edit
  def edit
  end

  # POST /notice_recipients
  # POST /notice_recipients.json
  def create
    @notice_recipient = NoticeRecipient.new(notice_recipient_params)

    respond_to do |format|
      if @notice_recipient.save
        format.html { redirect_to @notice_recipient, notice: 'Notice recipient was successfully created.' }
        format.json { render action: 'show', status: :created, location: @notice_recipient }
      else
        format.html { render action: 'new' }
        format.json { render json: @notice_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notice_recipients/1
  # PATCH/PUT /notice_recipients/1.json
  def update
    respond_to do |format|
      if @notice_recipient.update(notice_recipient_params)
        format.html { redirect_to @notice_recipient, notice: 'Notice recipient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @notice_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notice_recipients/1
  # DELETE /notice_recipients/1.json
  def destroy
    @notice_recipient.destroy
    respond_to do |format|
      format.html { redirect_to notice_recipients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice_recipient
      @notice_recipient = NoticeRecipient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_recipient_params
      params.require(:notice_recipient).permit(:notice_id, :receiver_user_id)
    end
end
