class Core::LoginController < ApplicationController

  skip_before_filter :autenticado
  skip_before_filter :autorizado
  skip_before_filter :mudar_senha_primeiro_login

  layout "login"

  def new
    session[:usuario_id] = nil
  end

  def create
    session[:usuario_id] = nil

    #verificar no modelo usuario se existe algem com o login digitado
    @core_usuario = Core::Usuario.where(:email=>params[:login][:email]).first

    #se existir o login entra
    if @core_usuario

      #pega o @core_usuario ligando com a tabela de senha e utiliza a funcao valida_senha do model senha mandando a senha digitada
      if @core_usuario.senha.valida_senha(params[:login][:senha])

        if @core_usuario.status == true
          #se entrou so fazer o resto 1 verifica se ja fez algum login se ja fez adiciona um numero senao começa no 1
          if @core_usuario.numlogin
            @core_usuario.numlogin += 1
          else
            @core_usuario.numlogin = 1
          end

          #so continuar com o resto....
          @core_usuario.ultimologinip = @core_usuario.correnteloginip
          @core_usuario.correnteloginip = request.remote_ip

          @core_usuario.ultimadataacesso = @core_usuario.correntedatalogin
          @core_usuario.correntedatalogin = DateTime.now-3.hours

          #salva os dados na tabela usuario
          @core_usuario.save

          #adiciona o id do usuario na variavel de sessao e redireciona para intranet
          session[:usuario_id] = @core_usuario.id

          redirect_to :controller=>"/intranet", :action=>"index"

        else
          flash[:notice] = "Este Usuario Encontra-se Desativado. Contate o Administrador do Sistema."
          redirect_to :controller=>"/core/login", :action=>"new"
        end
      else

        #se a senha nao é valida redireciona
        flash[:error] = "USUARIO OU SENHA INVALIDOS!"
        redirect_to :controller=>"/core/login", :action=>"new"
      end

    else

      #se o login nao é valido redireciona
      flash[:error] = "USUARIO OU SENHA INVALIDOS!"
      redirect_to :controller=>"/core/login", :action=>"new"
    end
  end

  def destroy
    @usuario_logado = nil
    session[:usuario_id] = nil
    redirect_to :controller=>"/home"
  end
end
