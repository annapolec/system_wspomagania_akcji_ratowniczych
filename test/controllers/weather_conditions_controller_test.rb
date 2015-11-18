require 'test_helper'

class WeatherConditionsControllerTest < ActionController::TestCase
  setup do
    @weather_condition = weather_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weather_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather_condition" do
    assert_difference('WeatherCondition.count') do
      post :create, weather_condition: { float: @weather_condition.float }
    end

    assert_redirected_to weather_condition_path(assigns(:weather_condition))
  end

  test "should show weather_condition" do
    get :show, id: @weather_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather_condition
    assert_response :success
  end

  test "should update weather_condition" do
    patch :update, id: @weather_condition, weather_condition: { float: @weather_condition.float }
    assert_redirected_to weather_condition_path(assigns(:weather_condition))
  end

  test "should destroy weather_condition" do
    assert_difference('WeatherCondition.count', -1) do
      delete :destroy, id: @weather_condition
    end

    assert_redirected_to weather_conditions_path
  end
end
