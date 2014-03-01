class NoticeShopsController < ApplicationController
  before_action :set_notice_shop, only: [:show, :edit, :update, :destroy]

  # GET /notice_shops
  # GET /notice_shops.json
  def index
    @notice_recipients = Shop.first.received_notices.order("created_at DESC")
  end

  # GET /notice_shops/1
  # GET /notice_shops/1.json
  def show
  end

  # GET /notice_shops/new
  def new
    @notice_shop = NoticeShop.new
  end

  # GET /notice_shops/1/edit
  def edit
  end

  # POST /notice_shops
  # POST /notice_shops.json
  def create
    @notice_shop = NoticeShop.new(notice_shop_params)

    respond_to do |format|
      if @notice_shop.save
        format.html { redirect_to @notice_shop, notice: 'Notice shop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @notice_shop }
      else
        format.html { render action: 'new' }
        format.json { render json: @notice_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notice_shops/1
  # PATCH/PUT /notice_shops/1.json
  def update
    respond_to do |format|
      if @notice_shop.update(notice_shop_params)
        format.html { redirect_to @notice_shop, notice: 'Notice shop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @notice_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notice_shops/1
  # DELETE /notice_shops/1.json
  def destroy
    @notice_shop.destroy
    respond_to do |format|
      format.html { redirect_to notice_shops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice_shop
      @notice_shop = NoticeShop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_shop_params
      params.require(:notice_shop).permit(:shop_id, :send_user_id, :type)
    end
end
