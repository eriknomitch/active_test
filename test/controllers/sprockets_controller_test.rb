require 'test_helper'

class SprocketsControllerTest < ActionController::TestCase
  setup do
    @sprocket = sprockets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sprockets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sprocket" do
    assert_difference('Sprocket.count') do
      post :create, sprocket: { description: @sprocket.description, title: @sprocket.title, user_id: @sprocket.user_id }
    end

    assert_redirected_to sprocket_path(assigns(:sprocket))
  end

  test "should show sprocket" do
    get :show, id: @sprocket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sprocket
    assert_response :success
  end

  test "should update sprocket" do
    patch :update, id: @sprocket, sprocket: { description: @sprocket.description, title: @sprocket.title, user_id: @sprocket.user_id }
    assert_redirected_to sprocket_path(assigns(:sprocket))
  end

  test "should destroy sprocket" do
    assert_difference('Sprocket.count', -1) do
      delete :destroy, id: @sprocket
    end

    assert_redirected_to sprockets_path
  end
end
