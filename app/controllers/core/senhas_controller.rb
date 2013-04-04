class Core::SenhasController < ApplicationController

  #se nao colocar o skip para autenticado ele vai verificar que esta setado para mudar senha, ai ele vem aqui e vota para verficar q tem q mudar senha e fica nesse loop
  #skip_before_filter :autenticado
  skip_before_filter :autorizado
  skip_before_filter :mudar_senha_primeiro_login

  def edit
    @core_senha = Core::Senha.find(params[:id])
    if @usuario_logado.senha.id != @core_senha.id
      flash[:error] = "Acao nao Permitida"
      redirect_to :controller=>"/intranet", :action=>"index"
    end
  end

  def update

    @core_senha = Core::Senha.find(params[:id])

    if @usuario_logado.senha.id != @core_senha.id
      flash[:error] = "Acao nao Permitida"
      redirect_to :controller=>"/intranet", :action=>"index"
    end

    if @core_senha.valida_senha(params[:core_senha][:senha_atual])
      if @core_senha.update_attributes(params[:core_senha])
        @core_senha.usuario.mudarsenha = false
        @core_senha.usuario.save
        flash[:success] = "Senha Atualizada com Sucesso!"
        redirect_to :controller=>"/intranet", :action=>"index"
      else
        flash[:error] = "Erro ao Atualizar Senha"
        render action: "edit"
      end
    else
      flash[:error] = "Senha Atual Invalida!"
      redirect_to edit_core_usuario_senha_path(@core_senha.usuario, @core_senha)
    end
  end
end
