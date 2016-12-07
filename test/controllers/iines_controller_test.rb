require 'test_helper'

class IinesControllerTest < ActionController::TestCase
  setup do
    @iine = iines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iine" do
    assert_difference('Iine.count') do
      post :create, iine: { example_id: @iine.example_id, user_id: @iine.user_id }
    end

    assert_redirected_to iine_path(assigns(:iine))
  end

  test "should show iine" do
    get :show, id: @iine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iine
    assert_response :success
  end

  test "should update iine" do
    patch :update, id: @iine, iine: { example_id: @iine.example_id, user_id: @iine.user_id }
    assert_redirected_to iine_path(assigns(:iine))
  end

  test "should destroy iine" do
    assert_difference('Iine.count', -1) do
      delete :destroy, id: @iine
    end

    assert_redirected_to iines_path
  end
end
