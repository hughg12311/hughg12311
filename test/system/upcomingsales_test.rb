require "application_system_test_case"

class UpcomingsalesTest < ApplicationSystemTestCase
  setup do
    @upcomingsale = upcomingsales(:one)
  end

  test "visiting the index" do
    visit upcomingsales_url
    assert_selector "h1", text: "Upcomingsales"
  end

  test "should create upcomingsale" do
    visit upcomingsales_url
    click_on "New upcomingsale"

    fill_in "Location", with: @upcomingsale.location
    fill_in "Salename", with: @upcomingsale.salename
    fill_in "Site", with: @upcomingsale.site
    click_on "Create Upcomingsale"

    assert_text "Upcomingsale was successfully created"
    click_on "Back"
  end

  test "should update Upcomingsale" do
    visit upcomingsale_url(@upcomingsale)
    click_on "Edit this upcomingsale", match: :first

    fill_in "Location", with: @upcomingsale.location
    fill_in "Salename", with: @upcomingsale.salename
    fill_in "Site", with: @upcomingsale.site
    click_on "Update Upcomingsale"

    assert_text "Upcomingsale was successfully updated"
    click_on "Back"
  end

  test "should destroy Upcomingsale" do
    visit upcomingsale_url(@upcomingsale)
    click_on "Destroy this upcomingsale", match: :first

    assert_text "Upcomingsale was successfully destroyed"
  end
end
