require 'test_helper'

class Core::GruposControllerTest < ActionController::TestCase
  setup do
    @core_grupo = core_grupos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_grupos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_grupo" do
    assert_difference('Core::Grupo.count') do
      post :create, core_grupo: { nome: @core_grupo.nome, sigla: @core_grupo.sigla, status: @core_grupo.status }
    end

    assert_redirected_to core_grupo_path(assigns(:core_grupo))
  end

  test "should show core_grupo" do
    get :show, id: @core_grupo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_grupo
    assert_response :success
  end

  test "should update core_grupo" do
    put :update, id: @core_grupo, core_grupo: { nome: @core_grupo.nome, sigla: @core_grupo.sigla, status: @core_grupo.status }
    assert_redirected_to core_grupo_path(assigns(:core_grupo))
  end

  test "should destroy core_grupo" do
    assert_difference('Core::Grupo.count', -1) do
      delete :destroy, id: @core_grupo
    end

    assert_redirected_to core_grupos_path
  end
end
