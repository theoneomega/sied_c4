require 'test_helper'

class WeaponCriminalgroupsControllerTest < ActionController::TestCase
  setup do
    @weapon_criminalgroup = weapon_criminalgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weapon_criminalgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weapon_criminalgroup" do
    assert_difference('WeaponCriminalgroup.count') do
      post :create, weapon_criminalgroup: { criminal_group_id: @weapon_criminalgroup.criminal_group_id, weapon_id: @weapon_criminalgroup.weapon_id }
    end

    assert_redirected_to weapon_criminalgroup_path(assigns(:weapon_criminalgroup))
  end

  test "should show weapon_criminalgroup" do
    get :show, id: @weapon_criminalgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weapon_criminalgroup
    assert_response :success
  end

  test "should update weapon_criminalgroup" do
    put :update, id: @weapon_criminalgroup, weapon_criminalgroup: { criminal_group_id: @weapon_criminalgroup.criminal_group_id, weapon_id: @weapon_criminalgroup.weapon_id }
    assert_redirected_to weapon_criminalgroup_path(assigns(:weapon_criminalgroup))
  end

  test "should destroy weapon_criminalgroup" do
    assert_difference('WeaponCriminalgroup.count', -1) do
      delete :destroy, id: @weapon_criminalgroup
    end

    assert_redirected_to weapon_criminalgroups_path
  end
end
