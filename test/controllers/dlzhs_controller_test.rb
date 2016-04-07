require 'test_helper'

class DlzhsControllerTest < ActionController::TestCase
  setup do
    @dlzh = dlzhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dlzhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dlzh" do
    assert_difference('Dlzh.count') do
      post :create, dlzh: { d_name: @dlzh.d_name }
    end

    assert_redirected_to dlzh_path(assigns(:dlzh))
  end

  test "should show dlzh" do
    get :show, id: @dlzh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dlzh
    assert_response :success
  end

  test "should update dlzh" do
    patch :update, id: @dlzh, dlzh: { d_name: @dlzh.d_name }
    assert_redirected_to dlzh_path(assigns(:dlzh))
  end

  test "should destroy dlzh" do
    assert_difference('Dlzh.count', -1) do
      delete :destroy, id: @dlzh
    end

    assert_redirected_to dlzhs_path
  end
end
