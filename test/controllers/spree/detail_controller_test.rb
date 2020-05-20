require 'test_helper'

class Spree::DetailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spree_detail_index_url
    assert_response :success
  end

  test "should get new" do
    get spree_detail_new_url
    assert_response :success
  end

  test "should get create" do
    get spree_detail_create_url
    assert_response :success
  end

  test "should get destroy" do
    get spree_detail_destroy_url
    assert_response :success
  end

end
