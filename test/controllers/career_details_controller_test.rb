require "test_helper"

class CareerDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @career_detail = career_details(:one)
  end

  test "should get index" do
    get career_details_url
    assert_response :success
  end

  test "should get new" do
    get new_career_detail_url
    assert_response :success
  end

  test "should create career_detail" do
    assert_difference("CareerDetail.count") do
      post career_details_url, params: { career_detail: { details: @career_detail.details, heading: @career_detail.heading } }
    end

    assert_redirected_to career_detail_url(CareerDetail.last)
  end

  test "should show career_detail" do
    get career_detail_url(@career_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_career_detail_url(@career_detail)
    assert_response :success
  end

  test "should update career_detail" do
    patch career_detail_url(@career_detail), params: { career_detail: { details: @career_detail.details, heading: @career_detail.heading } }
    assert_redirected_to career_detail_url(@career_detail)
  end

  test "should destroy career_detail" do
    assert_difference("CareerDetail.count", -1) do
      delete career_detail_url(@career_detail)
    end

    assert_redirected_to career_details_url
  end
end
