require "test_helper"

class ImpressumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get impressum_index_url
    assert_response :success
  end
end
