require "application_system_test_case"

class MycategoriesTest < ApplicationSystemTestCase
  setup do
    @mycategory = mycategories(:one)
  end

  test "visiting the index" do
    visit mycategories_url
    assert_selector "h1", text: "Mycategories"
  end

  test "creating a Mycategory" do
    visit mycategories_url
    click_on "New Mycategory"

    fill_in "Content", with: @mycategory.content
    fill_in "Title", with: @mycategory.title
    click_on "Create Mycategory"

    assert_text "Mycategory was successfully created"
    click_on "Back"
  end

  test "updating a Mycategory" do
    visit mycategories_url
    click_on "Edit", match: :first

    fill_in "Content", with: @mycategory.content
    fill_in "Title", with: @mycategory.title
    click_on "Update Mycategory"

    assert_text "Mycategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Mycategory" do
    visit mycategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mycategory was successfully destroyed"
  end
end
