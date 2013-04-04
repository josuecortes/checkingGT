require 'test_helper'

class Core::PessoaFisicasControllerTest < ActionController::TestCase
  setup do
    @core_pessoa_fisica = core_pessoa_fisicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_pessoa_fisicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_pessoa_fisica" do
    assert_difference('Core::PessoaFisica.count') do
      post :create, core_pessoa_fisica: { bairro: @core_pessoa_fisica.bairro, cidade: @core_pessoa_fisica.cidade, cpf: @core_pessoa_fisica.cpf, endereco: @core_pessoa_fisica.endereco, estado: @core_pessoa_fisica.estado, nome: @core_pessoa_fisica.nome, observacoes: @core_pessoa_fisica.observacoes, usuario_alterou_id: @core_pessoa_fisica.usuario_alterou_id, usuario_id: @core_pessoa_fisica.usuario_id }
    end

    assert_redirected_to core_pessoa_fisica_path(assigns(:core_pessoa_fisica))
  end

  test "should show core_pessoa_fisica" do
    get :show, id: @core_pessoa_fisica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_pessoa_fisica
    assert_response :success
  end

  test "should update core_pessoa_fisica" do
    put :update, id: @core_pessoa_fisica, core_pessoa_fisica: { bairro: @core_pessoa_fisica.bairro, cidade: @core_pessoa_fisica.cidade, cpf: @core_pessoa_fisica.cpf, endereco: @core_pessoa_fisica.endereco, estado: @core_pessoa_fisica.estado, nome: @core_pessoa_fisica.nome, observacoes: @core_pessoa_fisica.observacoes, usuario_alterou_id: @core_pessoa_fisica.usuario_alterou_id, usuario_id: @core_pessoa_fisica.usuario_id }
    assert_redirected_to core_pessoa_fisica_path(assigns(:core_pessoa_fisica))
  end

  test "should destroy core_pessoa_fisica" do
    assert_difference('Core::PessoaFisica.count', -1) do
      delete :destroy, id: @core_pessoa_fisica
    end

    assert_redirected_to core_pessoa_fisicas_path
  end
end
