require "application_system_test_case"

class YarusTest < ApplicationSystemTestCase
  setup do
    @yaru = yarus(:one)
  end

  test "visiting the index" do
    visit yarus_url
    assert_selector "h1", text: "Yarus"
  end

  test "creating a Yaru" do
    visit yarus_url
    click_on "New Yaru"

    fill_in "Content", with: @yaru.content
    fill_in "Create", with: @yaru.create
    fill_in "Dline", with: @yaru.dline
    fill_in "Title", with: @yaru.title
    click_on "Create Yaru"

    assert_text "Yaru was successfully created"
    click_on "Back"
  end

  test "updating a Yaru" do
    visit yarus_url
    click_on "Edit", match: :first

    fill_in "Content", with: @yaru.content
    fill_in "Create", with: @yaru.create
    fill_in "Dline", with: @yaru.dline
    fill_in "Title", with: @yaru.title
    click_on "Update Yaru"

    assert_text "Yaru was successfully updated"
    click_on "Back"
  end

  test "destroying a Yaru" do
    visit yarus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yaru was successfully destroyed"
  end
end
