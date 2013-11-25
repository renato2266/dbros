require 'test_helper'

class NamesControllerTest < ActionController::TestCase
  setup do
    @name = names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name" do
    assert_difference('Name.count') do
      post :create, name: { alias: @name.alias, ambit_id: @name.ambit_id, area_id: @name.area_id, cittadinanza: @name.cittadinanza, cod_fiscale: @name.cod_fiscale, cognome_nome: @name.cognome_nome, data_nascita: @name.data_nascita, domicilio: @name.domicilio, group_id: @name.group_id, luogo_nascita: @name.luogo_nascita, note_generali: @name.note_generali, professione: @name.professione, residenza: @name.residenza, soprannome: @name.soprannome, via: @name.via }
    end

    assert_redirected_to name_path(assigns(:name))
  end

  test "should show name" do
    get :show, id: @name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name
    assert_response :success
  end

  test "should update name" do
    patch :update, id: @name, name: { alias: @name.alias, ambit_id: @name.ambit_id, area_id: @name.area_id, cittadinanza: @name.cittadinanza, cod_fiscale: @name.cod_fiscale, cognome_nome: @name.cognome_nome, data_nascita: @name.data_nascita, domicilio: @name.domicilio, group_id: @name.group_id, luogo_nascita: @name.luogo_nascita, note_generali: @name.note_generali, professione: @name.professione, residenza: @name.residenza, soprannome: @name.soprannome, via: @name.via }
    assert_redirected_to name_path(assigns(:name))
  end

  test "should destroy name" do
    assert_difference('Name.count', -1) do
      delete :destroy, id: @name
    end

    assert_redirected_to names_path
  end
end
