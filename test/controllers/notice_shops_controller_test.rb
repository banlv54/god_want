require 'test_helper'

class NoticeShopsControllerTest < ActionController::TestCase
  setup do
    @notice_shop = notice_shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notice_shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notice_shop" do
    assert_difference('NoticeShop.count') do
      post :create, notice_shop: { send_user_id: @notice_shop.send_user_id, shop_id: @notice_shop.shop_id, type: @notice_shop.type }
    end

    assert_redirected_to notice_shop_path(assigns(:notice_shop))
  end

  test "should show notice_shop" do
    get :show, id: @notice_shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notice_shop
    assert_response :success
  end

  test "should update notice_shop" do
    patch :update, id: @notice_shop, notice_shop: { send_user_id: @notice_shop.send_user_id, shop_id: @notice_shop.shop_id, type: @notice_shop.type }
    assert_redirected_to notice_shop_path(assigns(:notice_shop))
  end

  test "should destroy notice_shop" do
    assert_difference('NoticeShop.count', -1) do
      delete :destroy, id: @notice_shop
    end

    assert_redirected_to notice_shops_path
  end
end
