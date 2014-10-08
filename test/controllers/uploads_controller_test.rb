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
    post :create, upload: {file: fixture_file_upload(Rails.root.join("/example_input.tab"))}
    assert_redirected_to uploads_path
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
