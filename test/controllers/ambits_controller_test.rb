require 'test_helper'

class AmbitsControllerTest < ActionController::TestCase
  setup do
    @ambit = ambits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambit" do
    assert_difference('Ambit.count') do
      post :create, ambit: { ambito_criminale: @ambit.ambito_criminale, note_ambito: @ambit.note_ambito }
    end

    assert_redirected_to ambit_path(assigns(:ambit))
  end

  test "should show ambit" do
    get :show, id: @ambit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ambit
    assert_response :success
  end

  test "should update ambit" do
    patch :update, id: @ambit, ambit: { ambito_criminale: @ambit.ambito_criminale, note_ambito: @ambit.note_ambito }
    assert_redirected_to ambit_path(assigns(:ambit))
  end

  test "should destroy ambit" do
    assert_difference('Ambit.count', -1) do
      delete :destroy, id: @ambit
    end

    assert_redirected_to ambits_path
  end
end
