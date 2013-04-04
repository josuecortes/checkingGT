require 'test_helper'

class Aquaviario::PortosControllerTest < ActionController::TestCase
  setup do
    @aquaviario_porto = aquaviario_portos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aquaviario_portos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aquaviario_porto" do
    assert_difference('Aquaviario::Porto.count') do
      post :create, aquaviario_porto: {  }
    end

    assert_redirected_to aquaviario_porto_path(assigns(:aquaviario_porto))
  end

  test "should show aquaviario_porto" do
    get :show, id: @aquaviario_porto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aquaviario_porto
    assert_response :success
  end

  test "should update aquaviario_porto" do
    put :update, id: @aquaviario_porto, aquaviario_porto: {  }
    assert_redirected_to aquaviario_porto_path(assigns(:aquaviario_porto))
  end

  test "should destroy aquaviario_porto" do
    assert_difference('Aquaviario::Porto.count', -1) do
      delete :destroy, id: @aquaviario_porto
    end

    assert_redirected_to aquaviario_portos_path
  end
end
