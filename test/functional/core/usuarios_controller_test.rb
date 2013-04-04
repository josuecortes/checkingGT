require 'test_helper'

class Core::UsuariosControllerTest < ActionController::TestCase
  setup do
    @core_usuario = core_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_usuario" do
    assert_difference('Core::Usuario.count') do
      post :create, core_usuario: { avatar: @core_usuario.avatar, correntedatalogin: @core_usuario.correntedatalogin, correnteloginip: @core_usuario.correnteloginip, email: @core_usuario.email, login: @core_usuario.login, mudarsenha: @core_usuario.mudarsenha, nome: @core_usuario.nome, numlogin: @core_usuario.numlogin, status: @core_usuario.status, ultimadataacesso: @core_usuario.ultimadataacesso, ultimadatalogin: @core_usuario.ultimadatalogin, ultimologinip: @core_usuario.ultimologinip }
    end

    assert_redirected_to core_usuario_path(assigns(:core_usuario))
  end

  test "should show core_usuario" do
    get :show, id: @core_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_usuario
    assert_response :success
  end

  test "should update core_usuario" do
    put :update, id: @core_usuario, core_usuario: { avatar: @core_usuario.avatar, correntedatalogin: @core_usuario.correntedatalogin, correnteloginip: @core_usuario.correnteloginip, email: @core_usuario.email, login: @core_usuario.login, mudarsenha: @core_usuario.mudarsenha, nome: @core_usuario.nome, numlogin: @core_usuario.numlogin, status: @core_usuario.status, ultimadataacesso: @core_usuario.ultimadataacesso, ultimadatalogin: @core_usuario.ultimadatalogin, ultimologinip: @core_usuario.ultimologinip }
    assert_redirected_to core_usuario_path(assigns(:core_usuario))
  end

  test "should destroy core_usuario" do
    assert_difference('Core::Usuario.count', -1) do
      delete :destroy, id: @core_usuario
    end

    assert_redirected_to core_usuarios_path
  end
end
