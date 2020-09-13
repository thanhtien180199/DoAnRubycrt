require 'test_helper'

class GiohangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @giohang = giohangs(:one)
  end

  test "should get index" do
    get giohangs_url
    assert_response :success
  end

  test "should get new" do
    get new_giohang_url
    assert_response :success
  end

  test "should create giohang" do
    assert_difference('Giohang.count') do
      post giohangs_url, params: { giohang: {  } }
    end

    assert_redirected_to giohang_url(Giohang.last)
  end

  test "should show giohang" do
    get giohang_url(@giohang)
    assert_response :success
  end

  test "should get edit" do
    get edit_giohang_url(@giohang)
    assert_response :success
  end

  test "should update giohang" do
    patch giohang_url(@giohang), params: { giohang: {  } }
    assert_redirected_to giohang_url(@giohang)
  end

  test "should destroy giohang" do
    assert_difference('Giohang.count', -1) do
      delete giohang_url(@giohang)
    end

    assert_redirected_to giohangs_url
  end
end
