require 'test_helper'

class Core::UsuarioGruposControllerTest < ActionController::TestCase
  setup do
    @core_usuario_grupo = core_usuario_grupos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_usuario_grupos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_usuario_grupo" do
    assert_difference('Core::UsuarioGrupo.count') do
      post :create, core_usuario_grupo: { grupo_id: @core_usuario_grupo.grupo_id, usuario_id: @core_usuario_grupo.usuario_id }
    end

    assert_redirected_to core_usuario_grupo_path(assigns(:core_usuario_grupo))
  end

  test "should show core_usuario_grupo" do
    get :show, id: @core_usuario_grupo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_usuario_grupo
    assert_response :success
  end

  test "should update core_usuario_grupo" do
    put :update, id: @core_usuario_grupo, core_usuario_grupo: { grupo_id: @core_usuario_grupo.grupo_id, usuario_id: @core_usuario_grupo.usuario_id }
    assert_redirected_to core_usuario_grupo_path(assigns(:core_usuario_grupo))
  end

  test "should destroy core_usuario_grupo" do
    assert_difference('Core::UsuarioGrupo.count', -1) do
      delete :destroy, id: @core_usuario_grupo
    end

    assert_redirected_to core_usuario_grupos_path
  end
end
