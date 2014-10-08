require 'test_helper'

class UploadsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    sign_in users(:one)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :redirect
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
