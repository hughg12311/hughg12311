require "test_helper"

class PastsalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pastsale = pastsales(:one)
  end

  test "should get index" do
    get pastsales_url
    assert_response :success
  end

  test "should get new" do
    get new_pastsale_url
    assert_response :success
  end

  test "should create pastsale" do
    assert_difference("Pastsale.count") do
      post pastsales_url, params: { pastsale: { date: @pastsale.date, location: @pastsale.location, sale_id: @pastsale.sale_id, salename: @pastsale.salename, site: @pastsale.site } }
    end

    assert_redirected_to pastsale_url(Pastsale.last)
  end

  test "should show pastsale" do
    get pastsale_url(@pastsale)
    assert_response :success
  end

  test "should get edit" do
    get edit_pastsale_url(@pastsale)
    assert_response :success
  end

  test "should update pastsale" do
    patch pastsale_url(@pastsale), params: { pastsale: { date: @pastsale.date, location: @pastsale.location, sale_id: @pastsale.sale_id, salename: @pastsale.salename, site: @pastsale.site } }
    assert_redirected_to pastsale_url(@pastsale)
  end

  test "should destroy pastsale" do
    assert_difference("Pastsale.count", -1) do
      delete pastsale_url(@pastsale)
    end

    assert_redirected_to pastsales_url
  end
end
