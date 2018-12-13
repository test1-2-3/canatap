require 'test_helper'

class PlaceTalksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get place_talks_index_url
    assert_response :success
  end

  test "should get show" do
    get place_talks_show_url
    assert_response :success
  end

  test "should get new" do
    get place_talks_new_url
    assert_response :success
  end

  test "should get edit" do
    get place_talks_edit_url
    assert_response :success
  end

  test "should get create" do
    get place_talks_create_url
    assert_response :success
  end

  test "should get update" do
    get place_talks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get place_talks_destroy_url
    assert_response :success
  end

end
