require 'test_helper'

class FeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get feeds_edit_url
    assert_response :success
  end

  test "should get confirm" do
    get feeds_confirm_url
    assert_response :success
  end

end
