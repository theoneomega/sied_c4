require 'test_helper'

class VehiclesCriminalgroupsControllerTest < ActionController::TestCase
  setup do
    @vehicles_criminalgroup = vehicles_criminalgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles_criminalgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicles_criminalgroup" do
    assert_difference('VehiclesCriminalgroup.count') do
      post :create, vehicles_criminalgroup: { criminal_group_id: @vehicles_criminalgroup.criminal_group_id, vehicle_id: @vehicles_criminalgroup.vehicle_id }
    end

    assert_redirected_to vehicles_criminalgroup_path(assigns(:vehicles_criminalgroup))
  end

  test "should show vehicles_criminalgroup" do
    get :show, id: @vehicles_criminalgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicles_criminalgroup
    assert_response :success
  end

  test "should update vehicles_criminalgroup" do
    put :update, id: @vehicles_criminalgroup, vehicles_criminalgroup: { criminal_group_id: @vehicles_criminalgroup.criminal_group_id, vehicle_id: @vehicles_criminalgroup.vehicle_id }
    assert_redirected_to vehicles_criminalgroup_path(assigns(:vehicles_criminalgroup))
  end

  test "should destroy vehicles_criminalgroup" do
    assert_difference('VehiclesCriminalgroup.count', -1) do
      delete :destroy, id: @vehicles_criminalgroup
    end

    assert_redirected_to vehicles_criminalgroups_path
  end
end
