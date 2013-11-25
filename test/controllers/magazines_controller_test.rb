require 'test_helper'

class MagazinesControllerTest < ActionController::TestCase
  setup do
    @magazine = magazines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magazines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magazine" do
    assert_difference('Magazine.count') do
      post :create, magazine: { area_id: @magazine.area_id, data_fondazione: @magazine.data_fondazione, group_id: @magazine.group_id, luogo_stampa: @magazine.luogo_stampa, name_magazine: @magazine.name_magazine, note: @magazine.note, union_id: @magazine.union_id }
    end

    assert_redirected_to magazine_path(assigns(:magazine))
  end

  test "should show magazine" do
    get :show, id: @magazine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magazine
    assert_response :success
  end

  test "should update magazine" do
    patch :update, id: @magazine, magazine: { area_id: @magazine.area_id, data_fondazione: @magazine.data_fondazione, group_id: @magazine.group_id, luogo_stampa: @magazine.luogo_stampa, name_magazine: @magazine.name_magazine, note: @magazine.note, union_id: @magazine.union_id }
    assert_redirected_to magazine_path(assigns(:magazine))
  end

  test "should destroy magazine" do
    assert_difference('Magazine.count', -1) do
      delete :destroy, id: @magazine
    end

    assert_redirected_to magazines_path
  end
end
