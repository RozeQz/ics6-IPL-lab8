require "test_helper"

class PalindromesControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get palindromes_input_url
    assert_response :success
  end

  test "should get view" do
    get palindromes_view_url
    assert_response :success
  end
end
