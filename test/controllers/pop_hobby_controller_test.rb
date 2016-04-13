require 'test_helper'

class PopHobbyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
