class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
  before_action :has_shop?, only: :new
  before_action :correct_shop?, only: [:edit, :update]

  # GET /shops
  # GET /shops.json
  def index
    @shops = Shop.all_shops(current_user.id)
  end

  # GET /shops/1
  # GET /shops/1.json
  def show
  end

  # GET /shops/new
  def new
    @shop = Shop.new
    @shop.build_tags
    @shop.user_shops
  end

  # GET /shops/1/edit
  def edit
  end

  # POST /shops
  # POST /shops.json
  def create
    @shop = Shop.new(shop_params)
    @shop.owner_id = current_user.id

    respond_to do |format|
      if @shop.save
        format.html { redirect_to shop_path, notice: 'Shop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shop }
      else
        format.html { render action: 'new' }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shops/1
  # PATCH/PUT /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to shop_path, notice: 'Shop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1
  # DELETE /shops/1.json
  def destroy
    @shop.destroy
    respond_to do |format|
      format.html { redirect_to shops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    def has_shop?
      redirect_to shops_path if current_user.shop
    end

    def correct_shop?
      redirect_to shops_path unless current_user.shops.include?(@shop)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:owner_id, :name, :address1, :address2,
        :city, :country, :zipcode, :tel, :banner, :tags, :remote_banner_url,
        tags_attributes: [:id, :name, :_destroy])
    end
end
