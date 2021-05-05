require "test_helper"

class AccessoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accessories_index_url
    assert_response :success
  end
end
