require 'test_helper'

class DangerZonesControllerTest < ActionController::TestCase
  setup do
    @danger_zone = danger_zones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:danger_zones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create danger_zone" do
    assert_difference('DangerZone.count') do
      post :create, danger_zone: { x: @danger_zone.x, y: @danger_zone.y }
    end

    assert_redirected_to danger_zone_path(assigns(:danger_zone))
  end

  test "should show danger_zone" do
    get :show, id: @danger_zone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @danger_zone
    assert_response :success
  end

  test "should update danger_zone" do
    patch :update, id: @danger_zone, danger_zone: { x: @danger_zone.x, y: @danger_zone.y }
    assert_redirected_to danger_zone_path(assigns(:danger_zone))
  end

  test "should destroy danger_zone" do
    assert_difference('DangerZone.count', -1) do
      delete :destroy, id: @danger_zone
    end

    assert_redirected_to danger_zones_path
  end
end
