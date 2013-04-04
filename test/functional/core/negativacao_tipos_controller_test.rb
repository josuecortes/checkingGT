require 'test_helper'

class Core::NegativacaoTiposControllerTest < ActionController::TestCase
  setup do
    @core_negativacao_tipo = core_negativacao_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_negativacao_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_negativacao_tipo" do
    assert_difference('Core::NegativacaoTipo.count') do
      post :create, core_negativacao_tipo: { codigo: @core_negativacao_tipo.codigo, descricao: @core_negativacao_tipo.descricao, legislacao: @core_negativacao_tipo.legislacao, orientacao: @core_negativacao_tipo.orientacao, usuario_alterou_id: @core_negativacao_tipo.usuario_alterou_id, usuario_id: @core_negativacao_tipo.usuario_id }
    end

    assert_redirected_to core_negativacao_tipo_path(assigns(:core_negativacao_tipo))
  end

  test "should show core_negativacao_tipo" do
    get :show, id: @core_negativacao_tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_negativacao_tipo
    assert_response :success
  end

  test "should update core_negativacao_tipo" do
    put :update, id: @core_negativacao_tipo, core_negativacao_tipo: { codigo: @core_negativacao_tipo.codigo, descricao: @core_negativacao_tipo.descricao, legislacao: @core_negativacao_tipo.legislacao, orientacao: @core_negativacao_tipo.orientacao, usuario_alterou_id: @core_negativacao_tipo.usuario_alterou_id, usuario_id: @core_negativacao_tipo.usuario_id }
    assert_redirected_to core_negativacao_tipo_path(assigns(:core_negativacao_tipo))
  end

  test "should destroy core_negativacao_tipo" do
    assert_difference('Core::NegativacaoTipo.count', -1) do
      delete :destroy, id: @core_negativacao_tipo
    end

    assert_redirected_to core_negativacao_tipos_path
  end
end
