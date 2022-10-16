require "application_system_test_case"

class PastsalesTest < ApplicationSystemTestCase
  setup do
    @pastsale = pastsales(:one)
  end

  test "visiting the index" do
    visit pastsales_url
    assert_selector "h1", text: "Pastsales"
  end

  test "should create pastsale" do
    visit pastsales_url
    click_on "New pastsale"

    fill_in "Date", with: @pastsale.date
    fill_in "Location", with: @pastsale.location
    fill_in "Sale", with: @pastsale.sale_id
    fill_in "Salename", with: @pastsale.salename
    fill_in "Site", with: @pastsale.site
    click_on "Create Pastsale"

    assert_text "Pastsale was successfully created"
    click_on "Back"
  end

  test "should update Pastsale" do
    visit pastsale_url(@pastsale)
    click_on "Edit this pastsale", match: :first

    fill_in "Date", with: @pastsale.date
    fill_in "Location", with: @pastsale.location
    fill_in "Sale", with: @pastsale.sale_id
    fill_in "Salename", with: @pastsale.salename
    fill_in "Site", with: @pastsale.site
    click_on "Update Pastsale"

    assert_text "Pastsale was successfully updated"
    click_on "Back"
  end

  test "should destroy Pastsale" do
    visit pastsale_url(@pastsale)
    click_on "Destroy this pastsale", match: :first

    assert_text "Pastsale was successfully destroyed"
  end
end
