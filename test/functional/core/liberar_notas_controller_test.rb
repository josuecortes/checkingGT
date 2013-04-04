require 'test_helper'

class Core::LiberarNotasControllerTest < ActionController::TestCase
  setup do
    @core_liberar_nota = core_liberar_notas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_liberar_notas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_liberar_nota" do
    assert_difference('Core::LiberarNota.count') do
      post :create, core_liberar_nota: { arrecadacao_codigo: @core_liberar_nota.arrecadacao_codigo, data_inclusao: @core_liberar_nota.data_inclusao, datahora_liberacao: @core_liberar_nota.datahora_liberacao, descricao_liberacao: @core_liberar_nota.descricao_liberacao, evento_liberacao: @core_liberar_nota.evento_liberacao, fiscalizacao_regra_id: @core_liberar_nota.fiscalizacao_regra_id, motivo_liberacao: @core_liberar_nota.motivo_liberacao, nota_retida_id: @core_liberar_nota.nota_retida_id, usuario_id: @core_liberar_nota.usuario_id, valor_correcao_monetaria: @core_liberar_nota.valor_correcao_monetaria, valor_juros: @core_liberar_nota.valor_juros, valor_multa: @core_liberar_nota.valor_multa, valor_principal: @core_liberar_nota.valor_principal, valor_total: @core_liberar_nota.valor_total }
    end

    assert_redirected_to core_liberar_nota_path(assigns(:core_liberar_nota))
  end

  test "should show core_liberar_nota" do
    get :show, id: @core_liberar_nota
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_liberar_nota
    assert_response :success
  end

  test "should update core_liberar_nota" do
    put :update, id: @core_liberar_nota, core_liberar_nota: { arrecadacao_codigo: @core_liberar_nota.arrecadacao_codigo, data_inclusao: @core_liberar_nota.data_inclusao, datahora_liberacao: @core_liberar_nota.datahora_liberacao, descricao_liberacao: @core_liberar_nota.descricao_liberacao, evento_liberacao: @core_liberar_nota.evento_liberacao, fiscalizacao_regra_id: @core_liberar_nota.fiscalizacao_regra_id, motivo_liberacao: @core_liberar_nota.motivo_liberacao, nota_retida_id: @core_liberar_nota.nota_retida_id, usuario_id: @core_liberar_nota.usuario_id, valor_correcao_monetaria: @core_liberar_nota.valor_correcao_monetaria, valor_juros: @core_liberar_nota.valor_juros, valor_multa: @core_liberar_nota.valor_multa, valor_principal: @core_liberar_nota.valor_principal, valor_total: @core_liberar_nota.valor_total }
    assert_redirected_to core_liberar_nota_path(assigns(:core_liberar_nota))
  end

  test "should destroy core_liberar_nota" do
    assert_difference('Core::LiberarNota.count', -1) do
      delete :destroy, id: @core_liberar_nota
    end

    assert_redirected_to core_liberar_notas_path
  end
end
