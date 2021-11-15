require "test_helper"

class PalindromesControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get root_url
    assert_response :success
  end

  test "should get view with an error message if no params supplied" do
    get palindromes_view_url
    assert_response :success
    assert_nil assigns(:numbers)
    assert_equal 'You have to enter something', assigns(:error)
  end

  test "should get view with an error message if string params supplied" do
    get palindromes_view_url, params: { n: 'zxc' }
    assert_response :success
    assert_nil assigns(:numbers)
    assert_equal 'Incorrect input', assigns(:error)
  end

  test "should get view with the correct result" do
    get palindromes_view_url, params: { n: '100'}
    assert_response :success
    assert_equal [0, 1, 2, 3, 11, 22, 26], assigns(:numbers)
    assert_nil assigns(:error)
  end
end
