require 'test_helper'

class GmailAccountsControllerTest < ActionController::TestCase
  setup do
    @gmail_account = gmail_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gmail_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gmail_account" do
    assert_difference('GmailAccount.count') do
      post :create, gmail_account: { password: @gmail_account.password, user_id: @gmail_account.user_id, username: @gmail_account.username }
    end

    assert_redirected_to gmail_account_path(assigns(:gmail_account))
  end

  test "should show gmail_account" do
    get :show, id: @gmail_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gmail_account
    assert_response :success
  end

  test "should update gmail_account" do
    put :update, id: @gmail_account, gmail_account: { password: @gmail_account.password, user_id: @gmail_account.user_id, username: @gmail_account.username }
    assert_redirected_to gmail_account_path(assigns(:gmail_account))
  end

  test "should destroy gmail_account" do
    assert_difference('GmailAccount.count', -1) do
      delete :destroy, id: @gmail_account
    end

    assert_redirected_to gmail_accounts_path
  end
end
