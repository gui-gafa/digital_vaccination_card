require 'test_helper'

class VaccinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vaccines_index_url
    assert_response :success
  end

  test "should get show" do
    get vaccines_show_url
    assert_response :success
  end

end
