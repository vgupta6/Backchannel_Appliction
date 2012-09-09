require 'test_helper'

class UserAccountsControllerTest < ActionController::TestCase
  setup do
    @user_account = user_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_account" do
    assert_difference('UserAccount.count') do
      post :create, user_account: { address: @user_account.address, admin: @user_account.admin, dateOfBirth: @user_account.dateOfBirth, email: @user_account.email, encrypted_password: @user_account.encrypted_password, gender: @user_account.gender, interests: @user_account.interests, name: @user_account.name, phNum: @user_account.phNum, professionalStatus: @user_account.professionalStatus, userName: @user_account.userName }
    end

    assert_redirected_to user_account_path(assigns(:user_account))
  end

  test "should show user_account" do
    get :show, id: @user_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_account
    assert_response :success
  end

  test "should update user_account" do
    put :update, id: @user_account, user_account: { address: @user_account.address, admin: @user_account.admin, dateOfBirth: @user_account.dateOfBirth, email: @user_account.email, encrypted_password: @user_account.encrypted_password, gender: @user_account.gender, interests: @user_account.interests, name: @user_account.name, phNum: @user_account.phNum, professionalStatus: @user_account.professionalStatus, userName: @user_account.userName }
    assert_redirected_to user_account_path(assigns(:user_account))
  end

  test "should destroy user_account" do
    assert_difference('UserAccount.count', -1) do
      delete :destroy, id: @user_account
    end

    assert_redirected_to user_accounts_path
  end
end
