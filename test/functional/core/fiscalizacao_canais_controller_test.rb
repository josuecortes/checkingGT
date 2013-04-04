require 'test_helper'

class Core::FiscalizacaoCanaisControllerTest < ActionController::TestCase
  setup do
    @core_fiscalizacao_canal = core_fiscalizacao_canais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_fiscalizacao_canais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_fiscalizacao_canal" do
    assert_difference('Core::FiscalizacaoCanal.count') do
      post :create, core_fiscalizacao_canal: { codigo: @core_fiscalizacao_canal.codigo, descricao: @core_fiscalizacao_canal.descricao, usuario_alterou_id: @core_fiscalizacao_canal.usuario_alterou_id, usuario_id: @core_fiscalizacao_canal.usuario_id }
    end

    assert_redirected_to core_fiscalizacao_canal_path(assigns(:core_fiscalizacao_canal))
  end

  test "should show core_fiscalizacao_canal" do
    get :show, id: @core_fiscalizacao_canal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_fiscalizacao_canal
    assert_response :success
  end

  test "should update core_fiscalizacao_canal" do
    put :update, id: @core_fiscalizacao_canal, core_fiscalizacao_canal: { codigo: @core_fiscalizacao_canal.codigo, descricao: @core_fiscalizacao_canal.descricao, usuario_alterou_id: @core_fiscalizacao_canal.usuario_alterou_id, usuario_id: @core_fiscalizacao_canal.usuario_id }
    assert_redirected_to core_fiscalizacao_canal_path(assigns(:core_fiscalizacao_canal))
  end

  test "should destroy core_fiscalizacao_canal" do
    assert_difference('Core::FiscalizacaoCanal.count', -1) do
      delete :destroy, id: @core_fiscalizacao_canal
    end

    assert_redirected_to core_fiscalizacao_canais_path
  end
end
