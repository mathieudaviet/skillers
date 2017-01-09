require 'test_helper'

class TesttestControllerTest < ActionDispatch::IntegrationTest
  test "should get test_bilan" do
    get testtest_test_bilan_url
    assert_response :success
  end

end
