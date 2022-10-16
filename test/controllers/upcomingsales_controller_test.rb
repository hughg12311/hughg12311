require "test_helper"

class UpcomingsalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upcomingsale = upcomingsales(:one)
  end

  test "should get index" do
    get upcomingsales_url
    assert_response :success
  end

  test "should get new" do
    get new_upcomingsale_url
    assert_response :success
  end

  test "should create upcomingsale" do
    assert_difference("Upcomingsale.count") do
      post upcomingsales_url, params: { upcomingsale: { location: @upcomingsale.location, salename: @upcomingsale.salename, site: @upcomingsale.site } }
    end

    assert_redirected_to upcomingsale_url(Upcomingsale.last)
  end

  test "should show upcomingsale" do
    get upcomingsale_url(@upcomingsale)
    assert_response :success
  end

  test "should get edit" do
    get edit_upcomingsale_url(@upcomingsale)
    assert_response :success
  end

  test "should update upcomingsale" do
    patch upcomingsale_url(@upcomingsale), params: { upcomingsale: { location: @upcomingsale.location, salename: @upcomingsale.salename, site: @upcomingsale.site } }
    assert_redirected_to upcomingsale_url(@upcomingsale)
  end

  test "should destroy upcomingsale" do
    assert_difference("Upcomingsale.count", -1) do
      delete upcomingsale_url(@upcomingsale)
    end

    assert_redirected_to upcomingsales_url
  end
end
