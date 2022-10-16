require "application_system_test_case"

class SlsalesTest < ApplicationSystemTestCase
  setup do
    @slsale = slsales(:one)
  end

  test "visiting the index" do
    visit slsales_url
    assert_selector "h1", text: "Slsales"
  end

  test "should create slsale" do
    visit slsales_url
    click_on "New slsale"

    fill_in "Location", with: @slsale.location
    fill_in "Salename", with: @slsale.salename
    fill_in "Site", with: @slsale.site
    click_on "Create Slsale"

    assert_text "Slsale was successfully created"
    click_on "Back"
  end

  test "should update Slsale" do
    visit slsale_url(@slsale)
    click_on "Edit this slsale", match: :first

    fill_in "Location", with: @slsale.location
    fill_in "Salename", with: @slsale.salename
    fill_in "Site", with: @slsale.site
    click_on "Update Slsale"

    assert_text "Slsale was successfully updated"
    click_on "Back"
  end

  test "should destroy Slsale" do
    visit slsale_url(@slsale)
    click_on "Destroy this slsale", match: :first

    assert_text "Slsale was successfully destroyed"
  end
end
