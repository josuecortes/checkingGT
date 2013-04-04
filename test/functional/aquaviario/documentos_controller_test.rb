require 'test_helper'

class Aquaviario::DocumentosControllerTest < ActionController::TestCase
  setup do
    @aquaviario_documento = aquaviario_documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aquaviario_documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aquaviario_documento" do
    assert_difference('Aquaviario::Documento.count') do
      post :create, aquaviario_documento: {  }
    end

    assert_redirected_to aquaviario_documento_path(assigns(:aquaviario_documento))
  end

  test "should show aquaviario_documento" do
    get :show, id: @aquaviario_documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aquaviario_documento
    assert_response :success
  end

  test "should update aquaviario_documento" do
    put :update, id: @aquaviario_documento, aquaviario_documento: {  }
    assert_redirected_to aquaviario_documento_path(assigns(:aquaviario_documento))
  end

  test "should destroy aquaviario_documento" do
    assert_difference('Aquaviario::Documento.count', -1) do
      delete :destroy, id: @aquaviario_documento
    end

    assert_redirected_to aquaviario_documentos_path
  end
end
