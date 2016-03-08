require 'test_helper'

class SpecialistsControllerTest < ActionController::TestCase
  setup do
    @specialist = specialists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specialists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specialist" do
    assert_difference('Specialist.count') do
      post :create, specialist: { address: @specialist.address, city: @specialist.city, country: @specialist.country, dob: @specialist.dob, gender: @specialist.gender, lastname: @specialist.lastname, name: @specialist.name, speciality_id: @specialist.speciality_id, state: @specialist.state }
    end

    assert_redirected_to specialist_path(assigns(:specialist))
  end

  test "should show specialist" do
    get :show, id: @specialist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specialist
    assert_response :success
  end

  test "should update specialist" do
    patch :update, id: @specialist, specialist: { address: @specialist.address, city: @specialist.city, country: @specialist.country, dob: @specialist.dob, gender: @specialist.gender, lastname: @specialist.lastname, name: @specialist.name, speciality_id: @specialist.speciality_id, state: @specialist.state }
    assert_redirected_to specialist_path(assigns(:specialist))
  end

  test "should destroy specialist" do
    assert_difference('Specialist.count', -1) do
      delete :destroy, id: @specialist
    end

    assert_redirected_to specialists_path
  end
end
