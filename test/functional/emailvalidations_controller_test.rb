require 'test_helper'

class EmailvalidationsControllerTest < ActionController::TestCase
  setup do
    @emailvalidation = emailvalidations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emailvalidations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emailvalidation" do
    assert_difference('Emailvalidation.count') do
      post :create, emailvalidation: { key: @emailvalidation.key, user_id: @emailvalidation.user_id }
    end

    assert_redirected_to emailvalidation_path(assigns(:emailvalidation))
  end

  test "should show emailvalidation" do
    get :show, id: @emailvalidation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emailvalidation
    assert_response :success
  end

  test "should update emailvalidation" do
    put :update, id: @emailvalidation, emailvalidation: { key: @emailvalidation.key, user_id: @emailvalidation.user_id }
    assert_redirected_to emailvalidation_path(assigns(:emailvalidation))
  end

  test "should destroy emailvalidation" do
    assert_difference('Emailvalidation.count', -1) do
      delete :destroy, id: @emailvalidation
    end

    assert_redirected_to emailvalidations_path
  end
end
