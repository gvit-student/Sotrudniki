require 'test_helper'

class SotrsControllerTest < ActionController::TestCase
  setup do
    @sotr = sotrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sotrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sotr" do
    assert_difference('Sotr.count') do
      post :create, sotr: { dlzh_id: @sotr.dlzh_id, s_date: @sotr.s_date, s_fam: @sotr.s_fam, s_name: @sotr.s_name, s_otch: @sotr.s_otch, s_photo: @sotr.s_photo }
    end

    assert_redirected_to sotr_path(assigns(:sotr))
  end

  test "should show sotr" do
    get :show, id: @sotr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sotr
    assert_response :success
  end

  test "should update sotr" do
    patch :update, id: @sotr, sotr: { dlzh_id: @sotr.dlzh_id, s_date: @sotr.s_date, s_fam: @sotr.s_fam, s_name: @sotr.s_name, s_otch: @sotr.s_otch, s_photo: @sotr.s_photo }
    assert_redirected_to sotr_path(assigns(:sotr))
  end

  test "should destroy sotr" do
    assert_difference('Sotr.count', -1) do
      delete :destroy, id: @sotr
    end

    assert_redirected_to sotrs_path
  end
end
