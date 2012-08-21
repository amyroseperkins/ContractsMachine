require 'test_helper'

class AltProvsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alt_provs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alt_prov" do
    assert_difference('AltProv.count') do
      post :create, :alt_prov => { }
    end

    assert_redirected_to alt_prov_path(assigns(:alt_prov))
  end

  test "should show alt_prov" do
    get :show, :id => alt_provs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alt_provs(:one).to_param
    assert_response :success
  end

  test "should update alt_prov" do
    put :update, :id => alt_provs(:one).to_param, :alt_prov => { }
    assert_redirected_to alt_prov_path(assigns(:alt_prov))
  end

  test "should destroy alt_prov" do
    assert_difference('AltProv.count', -1) do
      delete :destroy, :id => alt_provs(:one).to_param
    end

    assert_redirected_to alt_provs_path
  end
end
