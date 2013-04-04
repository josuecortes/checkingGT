require 'test_helper'

class Core::NpjsControllerTest < ActionController::TestCase
  setup do
    @core_npj = core_npjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_npjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_npj" do
    assert_difference('Core::Npj.count') do
      post :create, core_npj: { negativacao_tipo_id: @core_npj.negativacao_tipo_id, pessoa_juridica_id: @core_npj.pessoa_juridica_id, usuario_id: @core_npj.usuario_id }
    end

    assert_redirected_to core_npj_path(assigns(:core_npj))
  end

  test "should show core_npj" do
    get :show, id: @core_npj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_npj
    assert_response :success
  end

  test "should update core_npj" do
    put :update, id: @core_npj, core_npj: { negativacao_tipo_id: @core_npj.negativacao_tipo_id, pessoa_juridica_id: @core_npj.pessoa_juridica_id, usuario_id: @core_npj.usuario_id }
    assert_redirected_to core_npj_path(assigns(:core_npj))
  end

  test "should destroy core_npj" do
    assert_difference('Core::Npj.count', -1) do
      delete :destroy, id: @core_npj
    end

    assert_redirected_to core_npjs_path
  end
end
