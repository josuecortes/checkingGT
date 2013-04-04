require 'test_helper'

class Core::NotasControllerTest < ActionController::TestCase
  setup do
    @core_nota = core_notas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_notas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_nota" do
    assert_difference('Core::Nota.count') do
      post :create, core_nota: { cnpj_destino: @core_nota.cnpj_destino, cnpj_origem: @core_nota.cnpj_origem, codigo: @core_nota.codigo, cpf_destino: @core_nota.cpf_destino, data_emissao: @core_nota.data_emissao, data_entrada: @core_nota.data_entrada, numero_nota: @core_nota.numero_nota, numero_pin_suframa: @core_nota.numero_pin_suframa, qtd_itens_nfe: @core_nota.qtd_itens_nfe, uf_destino: @core_nota.uf_destino, uf_origem: @core_nota.uf_origem, usuario_id: @core_nota.usuario_id, valor_bc_icms: @core_nota.valor_bc_icms, valor_bc_st: @core_nota.valor_bc_st, valor_bc_st: @core_nota.valor_bc_st, valor_icms: @core_nota.valor_icms, valor_icms: @core_nota.valor_icms, valor_produtos: @core_nota.valor_produtos, valor_st: @core_nota.valor_st, valor_total: @core_nota.valor_total }
    end

    assert_redirected_to core_nota_path(assigns(:core_nota))
  end

  test "should show core_nota" do
    get :show, id: @core_nota
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_nota
    assert_response :success
  end

  test "should update core_nota" do
    put :update, id: @core_nota, core_nota: { cnpj_destino: @core_nota.cnpj_destino, cnpj_origem: @core_nota.cnpj_origem, codigo: @core_nota.codigo, cpf_destino: @core_nota.cpf_destino, data_emissao: @core_nota.data_emissao, data_entrada: @core_nota.data_entrada, numero_nota: @core_nota.numero_nota, numero_pin_suframa: @core_nota.numero_pin_suframa, qtd_itens_nfe: @core_nota.qtd_itens_nfe, uf_destino: @core_nota.uf_destino, uf_origem: @core_nota.uf_origem, usuario_id: @core_nota.usuario_id, valor_bc_icms: @core_nota.valor_bc_icms, valor_bc_st: @core_nota.valor_bc_st, valor_bc_st: @core_nota.valor_bc_st, valor_icms: @core_nota.valor_icms, valor_icms: @core_nota.valor_icms, valor_produtos: @core_nota.valor_produtos, valor_st: @core_nota.valor_st, valor_total: @core_nota.valor_total }
    assert_redirected_to core_nota_path(assigns(:core_nota))
  end

  test "should destroy core_nota" do
    assert_difference('Core::Nota.count', -1) do
      delete :destroy, id: @core_nota
    end

    assert_redirected_to core_notas_path
  end
end
