require 'test_helper'

class UserTalksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_talks_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_talks_destroy_url
    assert_response :success
  end

end
