require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @user = users(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: "new"+@user.email, password: "secret", password_confirmation: "secret"}
    end
  end

end
