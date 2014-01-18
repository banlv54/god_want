require 'test_helper'

class NoticeRecipientsControllerTest < ActionController::TestCase
  setup do
    @notice_recipient = notice_recipients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notice_recipients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notice_recipient" do
    assert_difference('NoticeRecipient.count') do
      post :create, notice_recipient: { notice_id: @notice_recipient.notice_id, receiver_user_id: @notice_recipient.receiver_user_id }
    end

    assert_redirected_to notice_recipient_path(assigns(:notice_recipient))
  end

  test "should show notice_recipient" do
    get :show, id: @notice_recipient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notice_recipient
    assert_response :success
  end

  test "should update notice_recipient" do
    patch :update, id: @notice_recipient, notice_recipient: { notice_id: @notice_recipient.notice_id, receiver_user_id: @notice_recipient.receiver_user_id }
    assert_redirected_to notice_recipient_path(assigns(:notice_recipient))
  end

  test "should destroy notice_recipient" do
    assert_difference('NoticeRecipient.count', -1) do
      delete :destroy, id: @notice_recipient
    end

    assert_redirected_to notice_recipients_path
  end
end
