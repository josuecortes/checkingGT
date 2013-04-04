require 'test_helper'

class Core::UnidadeCargasControllerTest < ActionController::TestCase
  setup do
    @core_unidade_carga = core_unidade_cargas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_unidade_cargas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_unidade_carga" do
    assert_difference('Core::UnidadeCarga.count') do
      post :create, core_unidade_carga: { tipo: @core_unidade_carga.tipo }
    end

    assert_redirected_to core_unidade_carga_path(assigns(:core_unidade_carga))
  end

  test "should show core_unidade_carga" do
    get :show, id: @core_unidade_carga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_unidade_carga
    assert_response :success
  end

  test "should update core_unidade_carga" do
    put :update, id: @core_unidade_carga, core_unidade_carga: { tipo: @core_unidade_carga.tipo }
    assert_redirected_to core_unidade_carga_path(assigns(:core_unidade_carga))
  end

  test "should destroy core_unidade_carga" do
    assert_difference('Core::UnidadeCarga.count', -1) do
      delete :destroy, id: @core_unidade_carga
    end

    assert_redirected_to core_unidade_cargas_path
  end
end
