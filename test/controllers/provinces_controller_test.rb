require 'test_helper'

class ProvincesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get provinces_index_url
    assert_response :success
  end

  test "should get show" do
    get provinces_show_url
    assert_response :success
  end

  test "should get references:users" do
    get provinces_references:users_url
    assert_response :success
  end

end
