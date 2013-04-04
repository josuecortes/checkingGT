require 'test_helper'

class Core::TransportadorasControllerTest < ActionController::TestCase
  setup do
    @core_transportadora = core_transportadoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_transportadoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_transportadora" do
    assert_difference('Core::Transportadora.count') do
      post :create, core_transportadora: { bairro: @core_transportadora.bairro, cep: @core_transportadora.cep, cidade: @core_transportadora.cidade, cnpj: @core_transportadora.cnpj, email: @core_transportadora.email, endereco: @core_transportadora.endereco, estado: @core_transportadora.estado, fax: @core_transportadora.fax, inscricaoestadual: @core_transportadora.inscricaoestadual, nomefantasia: @core_transportadora.nomefantasia, razaosocial: @core_transportadora.razaosocial, telefone: @core_transportadora.telefone }
    end

    assert_redirected_to core_transportadora_path(assigns(:core_transportadora))
  end

  test "should show core_transportadora" do
    get :show, id: @core_transportadora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_transportadora
    assert_response :success
  end

  test "should update core_transportadora" do
    put :update, id: @core_transportadora, core_transportadora: { bairro: @core_transportadora.bairro, cep: @core_transportadora.cep, cidade: @core_transportadora.cidade, cnpj: @core_transportadora.cnpj, email: @core_transportadora.email, endereco: @core_transportadora.endereco, estado: @core_transportadora.estado, fax: @core_transportadora.fax, inscricaoestadual: @core_transportadora.inscricaoestadual, nomefantasia: @core_transportadora.nomefantasia, razaosocial: @core_transportadora.razaosocial, telefone: @core_transportadora.telefone }
    assert_redirected_to core_transportadora_path(assigns(:core_transportadora))
  end

  test "should destroy core_transportadora" do
    assert_difference('Core::Transportadora.count', -1) do
      delete :destroy, id: @core_transportadora
    end

    assert_redirected_to core_transportadoras_path
  end
end
