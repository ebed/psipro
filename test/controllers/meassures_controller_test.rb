require 'test_helper'

class MeassuresControllerTest < ActionController::TestCase
  setup do
    @meassure = meassures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meassures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meassure" do
    assert_difference('Meassure.count') do
      post :create, meassure: { day: @meassure.day, metric_id: @meassure.metric_id, patient_id: @meassure.patient_id, specialist_id: @meassure.specialist_id, test_id: @meassure.test_id, value: @meassure.value }
    end

    assert_redirected_to meassure_path(assigns(:meassure))
  end

  test "should show meassure" do
    get :show, id: @meassure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meassure
    assert_response :success
  end

  test "should update meassure" do
    patch :update, id: @meassure, meassure: { day: @meassure.day, metric_id: @meassure.metric_id, patient_id: @meassure.patient_id, specialist_id: @meassure.specialist_id, test_id: @meassure.test_id, value: @meassure.value }
    assert_redirected_to meassure_path(assigns(:meassure))
  end

  test "should destroy meassure" do
    assert_difference('Meassure.count', -1) do
      delete :destroy, id: @meassure
    end

    assert_redirected_to meassures_path
  end
end
