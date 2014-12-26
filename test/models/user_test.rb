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

  test "check for valid email to pass" do
    valid_addresses = %w[chetaldrich@example.com CHET@hello.COM L_AUR-A@google.example.org
                         hello.there@test.cn hi+there@test.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "check for invalid email to not pass" do
    invalid_addresses = %w[not.valid@example,com user_at_example.io
                           user.name@example.com@hello.org hello@there+you.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid? "#{invalid_address.inspect} should be invalid"
    end
  end

  test "unique email test" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
end
