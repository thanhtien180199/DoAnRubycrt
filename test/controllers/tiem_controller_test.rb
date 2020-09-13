require 'test_helper'

class TiemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tiem_index_url
    assert_response :success
  end

end
