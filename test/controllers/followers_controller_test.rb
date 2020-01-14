require 'test_helper'

class FollowersControllerTest < ActionDispatch::IntegrationTest
  test "should get my_followers" do
    get followers_my_followers_url
    assert_response :success
  end

end
