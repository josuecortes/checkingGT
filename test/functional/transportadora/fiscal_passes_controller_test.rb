require 'test_helper'

class Transportadora::FiscalPassesControllerTest < ActionController::TestCase
  setup do
    @transportadora_fiscal_pass = transportadora_fiscal_passes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transportadora_fiscal_passes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transportadora_fiscal_pass" do
    assert_difference('Transportadora::FiscalPasse.count') do
      post :create, transportadora_fiscal_pass: { data_inclusao: @transportadora_fiscal_pass.data_inclusao, datahora_emissao: @transportadora_fiscal_pass.datahora_emissao, nota_id: @transportadora_fiscal_pass.nota_id, usuario_id: @transportadora_fiscal_pass.usuario_id }
    end

    assert_redirected_to transportadora_fiscal_pass_path(assigns(:transportadora_fiscal_pass))
  end

  test "should show transportadora_fiscal_pass" do
    get :show, id: @transportadora_fiscal_pass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transportadora_fiscal_pass
    assert_response :success
  end

  test "should update transportadora_fiscal_pass" do
    put :update, id: @transportadora_fiscal_pass, transportadora_fiscal_pass: { data_inclusao: @transportadora_fiscal_pass.data_inclusao, datahora_emissao: @transportadora_fiscal_pass.datahora_emissao, nota_id: @transportadora_fiscal_pass.nota_id, usuario_id: @transportadora_fiscal_pass.usuario_id }
    assert_redirected_to transportadora_fiscal_pass_path(assigns(:transportadora_fiscal_pass))
  end

  test "should destroy transportadora_fiscal_pass" do
    assert_difference('Transportadora::FiscalPasse.count', -1) do
      delete :destroy, id: @transportadora_fiscal_pass
    end

    assert_redirected_to transportadora_fiscal_passes_path
  end
end
