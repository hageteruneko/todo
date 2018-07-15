require "application_system_test_case"

class YarisTest < ApplicationSystemTestCase
  setup do
    @yari = yaris(:one)
  end

  test "visiting the index" do
    visit yaris_url
    assert_selector "h1", text: "Yaris"
  end

  test "creating a Yari" do
    visit yaris_url
    click_on "New Yari"

    fill_in "Content", with: @yari.content
    fill_in "Term", with: @yari.term
    fill_in "Title", with: @yari.title
    click_on "Create Yari"

    assert_text "Yari was successfully created"
    click_on "Back"
  end

  test "updating a Yari" do
    visit yaris_url
    click_on "Edit", match: :first

    fill_in "Content", with: @yari.content
    fill_in "Term", with: @yari.term
    fill_in "Title", with: @yari.title
    click_on "Update Yari"

    assert_text "Yari was successfully updated"
    click_on "Back"
  end

  test "destroying a Yari" do
    visit yaris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yari was successfully destroyed"
  end
end
