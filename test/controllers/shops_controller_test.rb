require 'test_helper'

class ShopsControllerTest < ActionController::TestCase
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post :create, shop: { address1: @shop.address1, address2: @shop.address2, banner: @shop.banner, city: @shop.city, country: @shop.country, name: @shop.name, owner_id: @shop.owner_id, tags: @shop.tags, tel: @shop.tel, zipcode: @shop.zipcode }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should show shop" do
    get :show, id: @shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop
    assert_response :success
  end

  test "should update shop" do
    patch :update, id: @shop, shop: { address1: @shop.address1, address2: @shop.address2, banner: @shop.banner, city: @shop.city, country: @shop.country, name: @shop.name, owner_id: @shop.owner_id, tags: @shop.tags, tel: @shop.tel, zipcode: @shop.zipcode }
    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete :destroy, id: @shop
    end

    assert_redirected_to shops_path
  end
end
