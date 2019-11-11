require 'test_helper'

class PestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pests_index_url
    assert_response :success
  end

  test "should get show" do
    get pests_show_url
    assert_response :success
  end

  test "should get new" do
    get pests_new_url
    assert_response :success
  end

  test "should get create" do
    get pests_create_url
    assert_response :success
  end

  test "should get edit" do
    get pests_edit_url
    assert_response :success
  end

  test "should get update" do
    get pests_update_url
    assert_response :success
  end

  test "should get delete" do
    get pests_delete_url
    assert_response :success
  end

end
