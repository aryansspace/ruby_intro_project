require 'test_helper'

class CitizensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get citizens_index_url
    assert_response :success
  end

  test "should get show" do
    get citizens_show_url
    assert_response :success
  end

end
