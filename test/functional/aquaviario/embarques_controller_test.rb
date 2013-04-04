require 'test_helper'

class Aquaviario::EmbarquesControllerTest < ActionController::TestCase
  setup do
    @aquaviario_embarque = aquaviario_embarques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aquaviario_embarques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aquaviario_embarque" do
    assert_difference('Aquaviario::Embarque.count') do
      post :create, aquaviario_embarque: {  }
    end

    assert_redirected_to aquaviario_embarque_path(assigns(:aquaviario_embarque))
  end

  test "should show aquaviario_embarque" do
    get :show, id: @aquaviario_embarque
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aquaviario_embarque
    assert_response :success
  end

  test "should update aquaviario_embarque" do
    put :update, id: @aquaviario_embarque, aquaviario_embarque: {  }
    assert_redirected_to aquaviario_embarque_path(assigns(:aquaviario_embarque))
  end

  test "should destroy aquaviario_embarque" do
    assert_difference('Aquaviario::Embarque.count', -1) do
      delete :destroy, id: @aquaviario_embarque
    end

    assert_redirected_to aquaviario_embarques_path
  end
end
