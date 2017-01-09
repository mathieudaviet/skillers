require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get trial" do
    get pages_trial_url
    assert_response :success
  end

end
