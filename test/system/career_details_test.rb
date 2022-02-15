require "application_system_test_case"

class CareerDetailsTest < ApplicationSystemTestCase
  setup do
    @career_detail = career_details(:one)
  end

  test "visiting the index" do
    visit career_details_url
    assert_selector "h1", text: "Career details"
  end

  test "should create career detail" do
    visit career_details_url
    click_on "New career detail"

    fill_in "Details", with: @career_detail.details
    fill_in "Heading", with: @career_detail.heading
    click_on "Create Career detail"

    assert_text "Career detail was successfully created"
    click_on "Back"
  end

  test "should update Career detail" do
    visit career_detail_url(@career_detail)
    click_on "Edit this career detail", match: :first

    fill_in "Details", with: @career_detail.details
    fill_in "Heading", with: @career_detail.heading
    click_on "Update Career detail"

    assert_text "Career detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Career detail" do
    visit career_detail_url(@career_detail)
    click_on "Destroy this career detail", match: :first

    assert_text "Career detail was successfully destroyed"
  end
end
