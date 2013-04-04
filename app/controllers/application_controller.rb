class ApplicationController < ActionController::Base
  protect_from_forgery

  #chamada de funcoes

  #antes de rodar o controllador vai rodar a funcao autenticado
  #OBS: este filtro deve ser pulado no controllador do login... e no controlador do home
  before_filter :autenticado

  #depois de rodar o autenticado ele vai rodar o autorizado verificando se o usuario tem permissao para acessar o controlador da url
  #este filtro deve ser pulado na intranet
  before_filter :autorizado

  #função para verificar se o campo mudarsenha esta marcado com true
  before_filter :mudar_senha_primeiro_login

  #funcoes
  #funcao que verifica se o usuario esta logado...
  def autenticado

    #verifica se a variavel de sessao existe
    if session[:usuario_id]

      #se a variavel de sessao estiver com algum id... pega o usuario com a id referente e adiciona a variavel @usuario_logado.....
      @usuario_logado = Core::Usuario.find(session[:usuario_id])

      #se a variavel @usuario_logado (*objeto*) nao estiver vazia
      if @usuario_logado

        return true

      #se usuario logado e false retorna o erro
      else
        flash[:error] = "Login Requerido!"
        session[:return_to] = request.original_url
        redirect_to :controller => "core/login", :action=>:new
      end

    #se a sessao e vazia retorna o erro
    else
      flash[:error] = "Login Requerido!"
      session[:return_to] = request.original_url
      redirect_to :controller => "core/login", :action=>:new
    end
  end

  #funcao que verifica se o usuario logado (id do usuario) tem permissao de acessar o controllador que vem do url (self.class)
  def autorizado
    #chama a funcao pode_acessar do model usuario mandando o controllador que vem do url
    aut = @usuario_logado.pode_acessar(self.class)
    if aut
    return aut
    #se retornar falso ou seja nao esta cadastrado o sistema para o usuario entao manda pra intranet
    else
      flash[:error] = "Sistema nao Autorizado"
      redirect_to "/intranet"
    end
  end

  def mudar_senha_primeiro_login
    if @usuario_logado.mudarsenha == true
      flash[:notice] = "Voce Deve Alterar Sua Senha Para Continuar"
      redirect_to edit_core_usuario_senha_path(@usuario_logado, @usuario_logado.senha.id)
    end
    return true
  end

end
