require 'test_helper'

class FasciclesControllerTest < ActionController::TestCase
  setup do
    @fascicle = fascicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fascicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fascicle" do
    assert_difference('Fascicle.count') do
      post :create, fascicle: { note: @fascicle.note, numero: @fascicle.numero }
    end

    assert_redirected_to fascicle_path(assigns(:fascicle))
  end

  test "should show fascicle" do
    get :show, id: @fascicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fascicle
    assert_response :success
  end

  test "should update fascicle" do
    patch :update, id: @fascicle, fascicle: { note: @fascicle.note, numero: @fascicle.numero }
    assert_redirected_to fascicle_path(assigns(:fascicle))
  end

  test "should destroy fascicle" do
    assert_difference('Fascicle.count', -1) do
      delete :destroy, id: @fascicle
    end

    assert_redirected_to fascicles_path
  end
end
