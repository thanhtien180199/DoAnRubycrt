require "application_system_test_case"

class GiohangsTest < ApplicationSystemTestCase
  setup do
    @giohang = giohangs(:one)
  end

  test "visiting the index" do
    visit giohangs_url
    assert_selector "h1", text: "Giohangs"
  end

  test "creating a Giohang" do
    visit giohangs_url
    click_on "New Giohang"

    click_on "Create Giohang"

    assert_text "Giohang was successfully created"
    click_on "Back"
  end

  test "updating a Giohang" do
    visit giohangs_url
    click_on "Edit", match: :first

    click_on "Update Giohang"

    assert_text "Giohang was successfully updated"
    click_on "Back"
  end

  test "destroying a Giohang" do
    visit giohangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Giohang was successfully destroyed"
  end
end
