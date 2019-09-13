require 'test_helper'

class ThirdPartyApiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get third_party_api_index_url
    assert_response :success
  end

  test "should get create" do
    get third_party_api_create_url
    assert_response :success
  end

  test "should get update" do
    get third_party_api_update_url
    assert_response :success
  end

  test "should get destroy" do
    get third_party_api_destroy_url
    assert_response :success
  end

end
