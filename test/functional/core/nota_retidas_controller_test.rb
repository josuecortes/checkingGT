require 'test_helper'

class Core::NotaRetidasControllerTest < ActionController::TestCase
  setup do
    @core_nota_retida = core_nota_retidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_nota_retidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_nota_retida" do
    assert_difference('Core::NotaRetida.count') do
      post :create, core_nota_retida: { data_entrada: @core_nota_retida.data_entrada, data_inclusao: @core_nota_retida.data_inclusao, data_pagamento: @core_nota_retida.data_pagamento, data_vencimento: @core_nota_retida.data_vencimento, datahora_fiscalizacao: @core_nota_retida.datahora_fiscalizacao, fiscalizacao_regra_id: @core_nota_retida.fiscalizacao_regra_id, nota_id: @core_nota_retida.nota_id, usuario_id: @core_nota_retida.usuario_id, valor_correcao_monetaria: @core_nota_retida.valor_correcao_monetaria, valor_juros: @core_nota_retida.valor_juros, valor_multa: @core_nota_retida.valor_multa, valor_principal: @core_nota_retida.valor_principal, valor_total: @core_nota_retida.valor_total }
    end

    assert_redirected_to core_nota_retida_path(assigns(:core_nota_retida))
  end

  test "should show core_nota_retida" do
    get :show, id: @core_nota_retida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_nota_retida
    assert_response :success
  end

  test "should update core_nota_retida" do
    put :update, id: @core_nota_retida, core_nota_retida: { data_entrada: @core_nota_retida.data_entrada, data_inclusao: @core_nota_retida.data_inclusao, data_pagamento: @core_nota_retida.data_pagamento, data_vencimento: @core_nota_retida.data_vencimento, datahora_fiscalizacao: @core_nota_retida.datahora_fiscalizacao, fiscalizacao_regra_id: @core_nota_retida.fiscalizacao_regra_id, nota_id: @core_nota_retida.nota_id, usuario_id: @core_nota_retida.usuario_id, valor_correcao_monetaria: @core_nota_retida.valor_correcao_monetaria, valor_juros: @core_nota_retida.valor_juros, valor_multa: @core_nota_retida.valor_multa, valor_principal: @core_nota_retida.valor_principal, valor_total: @core_nota_retida.valor_total }
    assert_redirected_to core_nota_retida_path(assigns(:core_nota_retida))
  end

  test "should destroy core_nota_retida" do
    assert_difference('Core::NotaRetida.count', -1) do
      delete :destroy, id: @core_nota_retida
    end

    assert_redirected_to core_nota_retidas_path
  end
end
