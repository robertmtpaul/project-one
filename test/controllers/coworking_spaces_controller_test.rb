require 'test_helper'

class CoworkingSpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get coworking_spaces_new_url
    assert_response :success
  end

  test "should get create" do
    get coworking_spaces_create_url
    assert_response :success
  end

  test "should get index" do
    get coworking_spaces_index_url
    assert_response :success
  end

  test "should get show" do
    get coworking_spaces_show_url
    assert_response :success
  end

  test "should get edit" do
    get coworking_spaces_edit_url
    assert_response :success
  end

  test "should get update" do
    get coworking_spaces_update_url
    assert_response :success
  end

  test "should get destroy" do
    get coworking_spaces_destroy_url
    assert_response :success
  end

end
