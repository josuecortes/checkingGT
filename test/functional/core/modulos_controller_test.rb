require 'test_helper'

class Core::ModulosControllerTest < ActionController::TestCase
  setup do
    @core_modulo = core_modulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_modulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_modulo" do
    assert_difference('Core::Modulo.count') do
      post :create, core_modulo: { nome: @core_modulo.nome, sigla: @core_modulo.sigla, status: @core_modulo.status }
    end

    assert_redirected_to core_modulo_path(assigns(:core_modulo))
  end

  test "should show core_modulo" do
    get :show, id: @core_modulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_modulo
    assert_response :success
  end

  test "should update core_modulo" do
    put :update, id: @core_modulo, core_modulo: { nome: @core_modulo.nome, sigla: @core_modulo.sigla, status: @core_modulo.status }
    assert_redirected_to core_modulo_path(assigns(:core_modulo))
  end

  test "should destroy core_modulo" do
    assert_difference('Core::Modulo.count', -1) do
      delete :destroy, id: @core_modulo
    end

    assert_redirected_to core_modulos_path
  end
end
