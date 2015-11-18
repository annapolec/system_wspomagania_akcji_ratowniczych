require 'test_helper'

class DangerScalesControllerTest < ActionController::TestCase
  setup do
    @danger_scale = danger_scales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:danger_scales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create danger_scale" do
    assert_difference('DangerScale.count') do
      post :create, danger_scale: { value: @danger_scale.value }
    end

    assert_redirected_to danger_scale_path(assigns(:danger_scale))
  end

  test "should show danger_scale" do
    get :show, id: @danger_scale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @danger_scale
    assert_response :success
  end

  test "should update danger_scale" do
    patch :update, id: @danger_scale, danger_scale: { value: @danger_scale.value }
    assert_redirected_to danger_scale_path(assigns(:danger_scale))
  end

  test "should destroy danger_scale" do
    assert_difference('DangerScale.count', -1) do
      delete :destroy, id: @danger_scale
    end

    assert_redirected_to danger_scales_path
  end
end
