require 'test_helper'

class PlaceTalkCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get place_talk_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get place_talk_comments_destroy_url
    assert_response :success
  end

end
