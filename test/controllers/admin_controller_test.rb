require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get createexercise" do
    get admin_createexercise_url
    assert_response :success
  end

end
