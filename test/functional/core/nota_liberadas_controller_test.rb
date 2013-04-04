require 'test_helper'

class Core::NotaLiberadasControllerTest < ActionController::TestCase
  setup do
    @core_nota_liberada = core_nota_liberadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_nota_liberadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_nota_liberada" do
    assert_difference('Core::NotaLiberada.count') do
      post :create, core_nota_liberada: { data_entrada: @core_nota_liberada.data_entrada, data_inclusao: @core_nota_liberada.data_inclusao, data_pagamento: @core_nota_liberada.data_pagamento, data_vencimento: @core_nota_liberada.data_vencimento, datahora_liberacao: @core_nota_liberada.datahora_liberacao, fiscal_passe_id: @core_nota_liberada.fiscal_passe_id, nota_id: @core_nota_liberada.nota_id, usuario_id: @core_nota_liberada.usuario_id, valor_correcao_monetaria: @core_nota_liberada.valor_correcao_monetaria, valor_juros: @core_nota_liberada.valor_juros, valor_multa: @core_nota_liberada.valor_multa, valor_principal: @core_nota_liberada.valor_principal, valor_total: @core_nota_liberada.valor_total }
    end

    assert_redirected_to core_nota_liberada_path(assigns(:core_nota_liberada))
  end

  test "should show core_nota_liberada" do
    get :show, id: @core_nota_liberada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_nota_liberada
    assert_response :success
  end

  test "should update core_nota_liberada" do
    put :update, id: @core_nota_liberada, core_nota_liberada: { data_entrada: @core_nota_liberada.data_entrada, data_inclusao: @core_nota_liberada.data_inclusao, data_pagamento: @core_nota_liberada.data_pagamento, data_vencimento: @core_nota_liberada.data_vencimento, datahora_liberacao: @core_nota_liberada.datahora_liberacao, fiscal_passe_id: @core_nota_liberada.fiscal_passe_id, nota_id: @core_nota_liberada.nota_id, usuario_id: @core_nota_liberada.usuario_id, valor_correcao_monetaria: @core_nota_liberada.valor_correcao_monetaria, valor_juros: @core_nota_liberada.valor_juros, valor_multa: @core_nota_liberada.valor_multa, valor_principal: @core_nota_liberada.valor_principal, valor_total: @core_nota_liberada.valor_total }
    assert_redirected_to core_nota_liberada_path(assigns(:core_nota_liberada))
  end

  test "should destroy core_nota_liberada" do
    assert_difference('Core::NotaLiberada.count', -1) do
      delete :destroy, id: @core_nota_liberada
    end

    assert_redirected_to core_nota_liberadas_path
  end
end
