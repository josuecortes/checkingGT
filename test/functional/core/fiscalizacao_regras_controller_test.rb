require 'test_helper'

class Core::FiscalizacaoRegrasControllerTest < ActionController::TestCase
  setup do
    @core_fiscalizacao_regra = core_fiscalizacao_regras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_fiscalizacao_regras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_fiscalizacao_regra" do
    assert_difference('Core::FiscalizacaoRegra.count') do
      post :create, core_fiscalizacao_regra: { codigo: @core_fiscalizacao_regra.codigo, descricao: @core_fiscalizacao_regra.descricao, fiscalizacao_canal_id: @core_fiscalizacao_regra.fiscalizacao_canal_id, legislacao: @core_fiscalizacao_regra.legislacao, negativacao_tipo_id: @core_fiscalizacao_regra.negativacao_tipo_id, orientacao: @core_fiscalizacao_regra.orientacao, usuario_alterou_id: @core_fiscalizacao_regra.usuario_alterou_id, usuario_id: @core_fiscalizacao_regra.usuario_id }
    end

    assert_redirected_to core_fiscalizacao_regra_path(assigns(:core_fiscalizacao_regra))
  end

  test "should show core_fiscalizacao_regra" do
    get :show, id: @core_fiscalizacao_regra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_fiscalizacao_regra
    assert_response :success
  end

  test "should update core_fiscalizacao_regra" do
    put :update, id: @core_fiscalizacao_regra, core_fiscalizacao_regra: { codigo: @core_fiscalizacao_regra.codigo, descricao: @core_fiscalizacao_regra.descricao, fiscalizacao_canal_id: @core_fiscalizacao_regra.fiscalizacao_canal_id, legislacao: @core_fiscalizacao_regra.legislacao, negativacao_tipo_id: @core_fiscalizacao_regra.negativacao_tipo_id, orientacao: @core_fiscalizacao_regra.orientacao, usuario_alterou_id: @core_fiscalizacao_regra.usuario_alterou_id, usuario_id: @core_fiscalizacao_regra.usuario_id }
    assert_redirected_to core_fiscalizacao_regra_path(assigns(:core_fiscalizacao_regra))
  end

  test "should destroy core_fiscalizacao_regra" do
    assert_difference('Core::FiscalizacaoRegra.count', -1) do
      delete :destroy, id: @core_fiscalizacao_regra
    end

    assert_redirected_to core_fiscalizacao_regras_path
  end
end
