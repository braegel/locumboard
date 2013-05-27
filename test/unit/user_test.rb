require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user attributes must not be empty" do
    user = User.new
    assert user.invalid?
    assert user.errors[:email].any?
    assert user.errors[:password_digest].any?
    assert user.errors[:password].any?
  end

  test "user fixture :one is valid" do
    user = users(:one)
    assert user.valid?
  end

end
