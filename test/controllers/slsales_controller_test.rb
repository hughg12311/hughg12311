require "test_helper"

class SlsalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slsale = slsales(:one)
  end

  test "should get index" do
    get slsales_url
    assert_response :success
  end

  test "should get new" do
    get new_slsale_url
    assert_response :success
  end

  test "should create slsale" do
    assert_difference("Slsale.count") do
      post slsales_url, params: { slsale: { location: @slsale.location, salename: @slsale.salename, site: @slsale.site } }
    end

    assert_redirected_to slsale_url(Slsale.last)
  end

  test "should show slsale" do
    get slsale_url(@slsale)
    assert_response :success
  end

  test "should get edit" do
    get edit_slsale_url(@slsale)
    assert_response :success
  end

  test "should update slsale" do
    patch slsale_url(@slsale), params: { slsale: { location: @slsale.location, salename: @slsale.salename, site: @slsale.site } }
    assert_redirected_to slsale_url(@slsale)
  end

  test "should destroy slsale" do
    assert_difference("Slsale.count", -1) do
      delete slsale_url(@slsale)
    end

    assert_redirected_to slsales_url
  end
end
