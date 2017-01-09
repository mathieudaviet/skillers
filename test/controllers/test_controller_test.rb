require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get results" do
    get test_results_url
    assert_response :success
  end

end
