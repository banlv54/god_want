require 'test_helper'

class NoticeShopRecipientsControllerTest < ActionController::TestCase
  setup do
    @notice_shop_recipient = notice_shop_recipients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notice_shop_recipients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notice_shop_recipient" do
    assert_difference('NoticeShopRecipient.count') do
      post :create, notice_shop_recipient: { notice_shop_id: @notice_shop_recipient.notice_shop_id, receiver_user_id: @notice_shop_recipient.receiver_user_id, type: @notice_shop_recipient.type }
    end

    assert_redirected_to notice_shop_recipient_path(assigns(:notice_shop_recipient))
  end

  test "should show notice_shop_recipient" do
    get :show, id: @notice_shop_recipient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notice_shop_recipient
    assert_response :success
  end

  test "should update notice_shop_recipient" do
    patch :update, id: @notice_shop_recipient, notice_shop_recipient: { notice_shop_id: @notice_shop_recipient.notice_shop_id, receiver_user_id: @notice_shop_recipient.receiver_user_id, type: @notice_shop_recipient.type }
    assert_redirected_to notice_shop_recipient_path(assigns(:notice_shop_recipient))
  end

  test "should destroy notice_shop_recipient" do
    assert_difference('NoticeShopRecipient.count', -1) do
      delete :destroy, id: @notice_shop_recipient
    end

    assert_redirected_to notice_shop_recipients_path
  end
end
