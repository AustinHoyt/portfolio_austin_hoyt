require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get resume" do
    get info_resume_url
    assert_response :success
  end

end
