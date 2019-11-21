require 'test_helper'

class BoradsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get borads_new_url
    assert_response :success
  end

  test "should get create" do
    get borads_create_url
    assert_response :success
  end

  test "should get edit" do
    get borads_edit_url
    assert_response :success
  end

  test "should get update" do
    get borads_update_url
    assert_response :success
  end

  test "should get destroy" do
    get borads_destroy_url
    assert_response :success
  end

  test "should get index" do
    get borads_index_url
    assert_response :success
  end

  test "should get show" do
    get borads_show_url
    assert_response :success
  end

end
