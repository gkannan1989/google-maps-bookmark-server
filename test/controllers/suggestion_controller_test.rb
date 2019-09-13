require 'test_helper'

class SuggestionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get suggestion_index_url
    assert_response :success
  end

  test "should get create" do
    get suggestion_create_url
    assert_response :success
  end

  test "should get update" do
    get suggestion_update_url
    assert_response :success
  end

  test "should get destroy" do
    get suggestion_destroy_url
    assert_response :success
  end

end
