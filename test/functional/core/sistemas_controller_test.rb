require 'test_helper'

class Core::SistemasControllerTest < ActionController::TestCase
  setup do
    @core_sistema = core_sistemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_sistemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_sistema" do
    assert_difference('Core::Sistema.count') do
      post :create, core_sistema: { apelido: @core_sistema.apelido, controlador: @core_sistema.controlador, icone: @core_sistema.icone, modulo_id: @core_sistema.modulo_id, nome: @core_sistema.nome, sigla: @core_sistema.sigla, status: @core_sistema.status, url: @core_sistema.url }
    end

    assert_redirected_to core_sistema_path(assigns(:core_sistema))
  end

  test "should show core_sistema" do
    get :show, id: @core_sistema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_sistema
    assert_response :success
  end

  test "should update core_sistema" do
    put :update, id: @core_sistema, core_sistema: { apelido: @core_sistema.apelido, controlador: @core_sistema.controlador, icone: @core_sistema.icone, modulo_id: @core_sistema.modulo_id, nome: @core_sistema.nome, sigla: @core_sistema.sigla, status: @core_sistema.status, url: @core_sistema.url }
    assert_redirected_to core_sistema_path(assigns(:core_sistema))
  end

  test "should destroy core_sistema" do
    assert_difference('Core::Sistema.count', -1) do
      delete :destroy, id: @core_sistema
    end

    assert_redirected_to core_sistemas_path
  end
end
