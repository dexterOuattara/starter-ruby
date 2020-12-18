require "application_system_test_case"

class PinsTest < ApplicationSystemTestCase
  setup do
    @pin = pins(:one)
  end

  test "visiting the index" do
    visit pins_url
    assert_selector "h1", text: "Pins"
  end

  test "creating a Pin2" do
    visit pins_url
    click_on "New Pin2"

    fill_in "Caption", with: @pin.caption
    fill_in "Title", with: @pin.title
    click_on "Create Pin2"

    assert_text "Pin2 was successfully created"
    click_on "Back"
  end

  test "updating a Pin2" do
    visit pins_url
    click_on "Edit", match: :first

    fill_in "Caption", with: @pin.caption
    fill_in "Title", with: @pin.title
    click_on "Update Pin2"

    assert_text "Pin2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Pin2" do
    visit pins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pin2 was successfully destroyed"
  end
end
