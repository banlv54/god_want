require 'test_helper'

class UserShopsControllerTest < ActionController::TestCase
  setup do
    @user_shop = user_shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_shop" do
    assert_difference('UserShop.count') do
      post :create, user_shop: { role: @user_shop.role, shop_id: @user_shop.shop_id, user_id: @user_shop.user_id }
    end

    assert_redirected_to user_shop_path(assigns(:user_shop))
  end

  test "should show user_shop" do
    get :show, id: @user_shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_shop
    assert_response :success
  end

  test "should update user_shop" do
    patch :update, id: @user_shop, user_shop: { role: @user_shop.role, shop_id: @user_shop.shop_id, user_id: @user_shop.user_id }
    assert_redirected_to user_shop_path(assigns(:user_shop))
  end

  test "should destroy user_shop" do
    assert_difference('UserShop.count', -1) do
      delete :destroy, id: @user_shop
    end

    assert_redirected_to user_shops_path
  end
end
