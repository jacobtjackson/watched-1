require 'test_helper'

class EpisodesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:episodes)
  end
end
