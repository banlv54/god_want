class NoticeShopRecipientsController < ApplicationController
  before_action :set_notice_shop_recipient, only: [:show, :edit, :update, :destroy]

  # GET /notice_shop_recipients
  # GET /notice_shop_recipients.json
  def index
    @notice_shop_recipients = NoticeShopRecipient.all
  end

  # GET /notice_shop_recipients/1
  # GET /notice_shop_recipients/1.json
  def show
  end

  # GET /notice_shop_recipients/new
  def new
    @notice_shop_recipient = NoticeShopRecipient.new
  end

  # GET /notice_shop_recipients/1/edit
  def edit
  end

  # POST /notice_shop_recipients
  # POST /notice_shop_recipients.json
  def create
    @notice_shop_recipient = NoticeShopRecipient.new(notice_shop_recipient_params)

    respond_to do |format|
      if @notice_shop_recipient.save
        format.html { redirect_to @notice_shop_recipient, notice: 'Notice shop recipient was successfully created.' }
        format.json { render action: 'show', status: :created, location: @notice_shop_recipient }
      else
        format.html { render action: 'new' }
        format.json { render json: @notice_shop_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notice_shop_recipients/1
  # PATCH/PUT /notice_shop_recipients/1.json
  def update
    respond_to do |format|
      if @notice_shop_recipient.update(notice_shop_recipient_params)
        format.html { redirect_to @notice_shop_recipient, notice: 'Notice shop recipient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @notice_shop_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notice_shop_recipients/1
  # DELETE /notice_shop_recipients/1.json
  def destroy
    @notice_shop_recipient.destroy
    respond_to do |format|
      format.html { redirect_to notice_shop_recipients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice_shop_recipient
      @notice_shop_recipient = NoticeShopRecipient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_shop_recipient_params
      params.require(:notice_shop_recipient).permit(:notice_shop_id, :receiver_user_id, :type)
    end
end
