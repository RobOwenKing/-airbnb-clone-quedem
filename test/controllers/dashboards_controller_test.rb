require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get mybookings" do
    get dashboards_mybookings_url
    assert_response :success
  end

  test "should get myexperiences" do
    get dashboards_myexperiences_url
    assert_response :success
  end

end
