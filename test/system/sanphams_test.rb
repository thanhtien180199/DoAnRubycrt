require "application_system_test_case"

class SanphamsTest < ApplicationSystemTestCase
  setup do
    @sanpham = sanphams(:one)
  end

  test "visiting the index" do
    visit sanphams_url
    assert_selector "h1", text: "Sanphams"
  end

  test "creating a Sanpham" do
    visit sanphams_url
    click_on "New Sanpham"

    fill_in "Anh", with: @sanpham.anh
    fill_in "Gia", with: @sanpham.gia
    fill_in "Namsanxuat", with: @sanpham.namsanxuat
    fill_in "Noidung", with: @sanpham.noidung
    fill_in "Soluong", with: @sanpham.soluong
    fill_in "Tacgia", with: @sanpham.tacgia
    fill_in "Theloai", with: @sanpham.theloai
    fill_in "Tieude", with: @sanpham.tieude
    click_on "Create Sanpham"

    assert_text "Sanpham was successfully created"
    click_on "Back"
  end

  test "updating a Sanpham" do
    visit sanphams_url
    click_on "Edit", match: :first

    fill_in "Anh", with: @sanpham.anh
    fill_in "Gia", with: @sanpham.gia
    fill_in "Namsanxuat", with: @sanpham.namsanxuat
    fill_in "Noidung", with: @sanpham.noidung
    fill_in "Soluong", with: @sanpham.soluong
    fill_in "Tacgia", with: @sanpham.tacgia
    fill_in "Theloai", with: @sanpham.theloai
    fill_in "Tieude", with: @sanpham.tieude
    click_on "Update Sanpham"

    assert_text "Sanpham was successfully updated"
    click_on "Back"
  end

  test "destroying a Sanpham" do
    visit sanphams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sanpham was successfully destroyed"
  end
end
