require 'test_helper'

class Core::GrupoSistemasControllerTest < ActionController::TestCase
  setup do
    @core_grupo_sistema = core_grupo_sistemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_grupo_sistemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_grupo_sistema" do
    assert_difference('Core::GrupoSistema.count') do
      post :create, core_grupo_sistema: { grupo_id: @core_grupo_sistema.grupo_id, sistema_id: @core_grupo_sistema.sistema_id }
    end

    assert_redirected_to core_grupo_sistema_path(assigns(:core_grupo_sistema))
  end

  test "should show core_grupo_sistema" do
    get :show, id: @core_grupo_sistema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_grupo_sistema
    assert_response :success
  end

  test "should update core_grupo_sistema" do
    put :update, id: @core_grupo_sistema, core_grupo_sistema: { grupo_id: @core_grupo_sistema.grupo_id, sistema_id: @core_grupo_sistema.sistema_id }
    assert_redirected_to core_grupo_sistema_path(assigns(:core_grupo_sistema))
  end

  test "should destroy core_grupo_sistema" do
    assert_difference('Core::GrupoSistema.count', -1) do
      delete :destroy, id: @core_grupo_sistema
    end

    assert_redirected_to core_grupo_sistemas_path
  end
end
