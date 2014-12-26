require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "User", email: "user@example.com")
  end

  test "should return as valid" do
    assert @user.valid?
  end
  
end
