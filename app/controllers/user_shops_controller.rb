class UserShopsController < ApplicationController
  before_action :set_user_shop, only: [:show, :edit, :update, :destroy]

  # GET /user_shops
  # GET /user_shops.json
  def index
    @user_shops = UserShop.all
  end

  # GET /user_shops/1
  # GET /user_shops/1.json
  def show
  end

  # GET /user_shops/new
  def new
    @user_shop = UserShop.new
  end

  # GET /user_shops/1/edit
  def edit
  end

  # POST /user_shops
  # POST /user_shops.json
  def create
    @user_shop = UserShop.new(user_shop_params)

    respond_to do |format|
      if @user_shop.save
        format.html { redirect_to @user_shop, notice: 'User shop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_shop }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_shops/1
  # PATCH/PUT /user_shops/1.json
  def update
    respond_to do |format|
      if @user_shop.update(user_shop_params)
        format.html { redirect_to @user_shop, notice: 'User shop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_shops/1
  # DELETE /user_shops/1.json
  def destroy
    @user_shop.destroy
    respond_to do |format|
      format.html { redirect_to user_shops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_shop
      @user_shop = UserShop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_shop_params
      params.require(:user_shop).permit(:user_id, :shop_id, :role)
    end
end
