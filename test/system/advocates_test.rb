require "application_system_test_case"

class AdvocatesTest < ApplicationSystemTestCase
  setup do
    @advocate = advocates(:one)
  end

  test "visiting the index" do
    visit advocates_url
    assert_selector "h1", text: "Advocates"
  end

  test "should create advocate" do
    visit advocates_url
    click_on "New advocate"

    fill_in "Email", with: @advocate.email
    fill_in "First name", with: @advocate.first_name
    fill_in "Last hame", with: @advocate.last_hame
    fill_in "Zipcode", with: @advocate.zipcode
    click_on "Create Advocate"

    assert_text "Advocate was successfully created"
    click_on "Back"
  end

  test "should update Advocate" do
    visit advocate_url(@advocate)
    click_on "Edit this advocate", match: :first

    fill_in "Email", with: @advocate.email
    fill_in "First name", with: @advocate.first_name
    fill_in "Last hame", with: @advocate.last_hame
    fill_in "Zipcode", with: @advocate.zipcode
    click_on "Update Advocate"

    assert_text "Advocate was successfully updated"
    click_on "Back"
  end

  test "should destroy Advocate" do
    visit advocate_url(@advocate)
    click_on "Destroy this advocate", match: :first

    assert_text "Advocate was successfully destroyed"
  end
end
