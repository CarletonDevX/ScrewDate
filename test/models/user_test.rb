require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "User", email: "user@example.com")
  end

  test "should return as valid" do
    assert @user.valid?
  end

  test "check for name" do
    @user.name = "a" * 31
    assert_not @user.valid?
  end

  test "check for email" do
    valid_addresses = %w[chetaldrich@example.com CHET@hello.COM L_AUR-A@google.example.org
                         hello.there@test.cn hi+there@test.cn]
    valid_addresses.each do |address|
      @user.email = address
      assert @user.valid?, "#{address.inspect} should be valid"
    end
  end
end
