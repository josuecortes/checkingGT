require 'test_helper'

class Core::NpfsControllerTest < ActionController::TestCase
  setup do
    @core_npf = core_npfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_npfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_npf" do
    assert_difference('Core::Npf.count') do
      post :create, core_npf: { negativacao_tipo_id: @core_npf.negativacao_tipo_id, pessoa_fisica_id: @core_npf.pessoa_fisica_id, usuario_id: @core_npf.usuario_id }
    end

    assert_redirected_to core_npf_path(assigns(:core_npf))
  end

  test "should show core_npf" do
    get :show, id: @core_npf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_npf
    assert_response :success
  end

  test "should update core_npf" do
    put :update, id: @core_npf, core_npf: { negativacao_tipo_id: @core_npf.negativacao_tipo_id, pessoa_fisica_id: @core_npf.pessoa_fisica_id, usuario_id: @core_npf.usuario_id }
    assert_redirected_to core_npf_path(assigns(:core_npf))
  end

  test "should destroy core_npf" do
    assert_difference('Core::Npf.count', -1) do
      delete :destroy, id: @core_npf
    end

    assert_redirected_to core_npfs_path
  end
end
