require "application_system_test_case"

class Spree::DiariesTest < ApplicationSystemTestCase
  setup do
    @spree_diary = spree_diaries(:one)
  end

  test "visiting the index" do
    visit spree_diaries_url
    assert_selector "h1", text: "Spree/Diaries"
  end

  test "creating a Diary" do
    visit spree_diaries_url
    click_on "New Spree/Diary"

    fill_in "Body", with: @spree_diary.body
    fill_in "Order", with: @spree_diary.order_id
    fill_in "Title", with: @spree_diary.title
    click_on "Create Diary"

    assert_text "Diary was successfully created"
    click_on "Back"
  end

  test "updating a Diary" do
    visit spree_diaries_url
    click_on "Edit", match: :first

    fill_in "Body", with: @spree_diary.body
    fill_in "Order", with: @spree_diary.order_id
    fill_in "Title", with: @spree_diary.title
    click_on "Update Diary"

    assert_text "Diary was successfully updated"
    click_on "Back"
  end

  test "destroying a Diary" do
    visit spree_diaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diary was successfully destroyed"
  end
end
