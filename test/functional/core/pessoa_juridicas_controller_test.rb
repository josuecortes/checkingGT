require 'test_helper'

class Core::PessoaJuridicasControllerTest < ActionController::TestCase
  setup do
    @core_pessoa_juridica = core_pessoa_juridicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_pessoa_juridicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_pessoa_juridica" do
    assert_difference('Core::PessoaJuridica.count') do
      post :create, core_pessoa_juridica: { bairro: @core_pessoa_juridica.bairro, cidade: @core_pessoa_juridica.cidade, cnpj: @core_pessoa_juridica.cnpj, endereco: @core_pessoa_juridica.endereco, estado: @core_pessoa_juridica.estado, observacoes: @core_pessoa_juridica.observacoes, razaosocial: @core_pessoa_juridica.razaosocial, usuario_alterou_id: @core_pessoa_juridica.usuario_alterou_id, usuario_id: @core_pessoa_juridica.usuario_id }
    end

    assert_redirected_to core_pessoa_juridica_path(assigns(:core_pessoa_juridica))
  end

  test "should show core_pessoa_juridica" do
    get :show, id: @core_pessoa_juridica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_pessoa_juridica
    assert_response :success
  end

  test "should update core_pessoa_juridica" do
    put :update, id: @core_pessoa_juridica, core_pessoa_juridica: { bairro: @core_pessoa_juridica.bairro, cidade: @core_pessoa_juridica.cidade, cnpj: @core_pessoa_juridica.cnpj, endereco: @core_pessoa_juridica.endereco, estado: @core_pessoa_juridica.estado, observacoes: @core_pessoa_juridica.observacoes, razaosocial: @core_pessoa_juridica.razaosocial, usuario_alterou_id: @core_pessoa_juridica.usuario_alterou_id, usuario_id: @core_pessoa_juridica.usuario_id }
    assert_redirected_to core_pessoa_juridica_path(assigns(:core_pessoa_juridica))
  end

  test "should destroy core_pessoa_juridica" do
    assert_difference('Core::PessoaJuridica.count', -1) do
      delete :destroy, id: @core_pessoa_juridica
    end

    assert_redirected_to core_pessoa_juridicas_path
  end
end
