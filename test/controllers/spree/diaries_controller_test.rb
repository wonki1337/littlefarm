require 'test_helper'

class Spree::DiariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spree_diary = spree_diaries(:one)
  end

  test "should get index" do
    get spree_diaries_url
    assert_response :success
  end

  test "should get new" do
    get new_spree_diary_url
    assert_response :success
  end

  test "should create spree_diary" do
    assert_difference('Spree::Diary.count') do
      post spree_diaries_url, params: { spree_diary: { body: @spree_diary.body, order_id: @spree_diary.order_id, title: @spree_diary.title } }
    end

    assert_redirected_to spree_diary_url(Spree::Diary.last)
  end

  test "should show spree_diary" do
    get spree_diary_url(@spree_diary)
    assert_response :success
  end

  test "should get edit" do
    get edit_spree_diary_url(@spree_diary)
    assert_response :success
  end

  test "should update spree_diary" do
    patch spree_diary_url(@spree_diary), params: { spree_diary: { body: @spree_diary.body, order_id: @spree_diary.order_id, title: @spree_diary.title } }
    assert_redirected_to spree_diary_url(@spree_diary)
  end

  test "should destroy spree_diary" do
    assert_difference('Spree::Diary.count', -1) do
      delete spree_diary_url(@spree_diary)
    end

    assert_redirected_to spree_diaries_url
  end
end
