require "test_helper"

class PersonControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get person_login_url
    assert_response :success
  end
end
