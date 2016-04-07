require 'test_helper'

class HobbySotrsControllerTest < ActionController::TestCase
  setup do
    @hobby_sotr = hobby_sotrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hobby_sotrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hobby_sotr" do
    assert_difference('HobbySotr.count') do
      post :create, hobby_sotr: { hobby_id: @hobby_sotr.hobby_id, sotr_id: @hobby_sotr.sotr_id }
    end

    assert_redirected_to hobby_sotr_path(assigns(:hobby_sotr))
  end

  test "should show hobby_sotr" do
    get :show, id: @hobby_sotr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hobby_sotr
    assert_response :success
  end

  test "should update hobby_sotr" do
    patch :update, id: @hobby_sotr, hobby_sotr: { hobby_id: @hobby_sotr.hobby_id, sotr_id: @hobby_sotr.sotr_id }
    assert_redirected_to hobby_sotr_path(assigns(:hobby_sotr))
  end

  test "should destroy hobby_sotr" do
    assert_difference('HobbySotr.count', -1) do
      delete :destroy, id: @hobby_sotr
    end

    assert_redirected_to hobby_sotrs_path
  end
end
