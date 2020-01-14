require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get all_users" do
    get users_all_users_url
    assert_response :success
  end

end
