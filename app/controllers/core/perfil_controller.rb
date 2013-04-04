class Core::PerfilController < ApplicationController

  skip_before_filter :autorizado

  def show
    @usuario = Core::Usuario.find(params[:id])
    #se usuario logado (id) nao for igual ao usuario (params(id)) redireciona para intranet
    unless @usuario_logado == @usuario
      flash[:error] = "Acao nao Permitida"
      redirect_to :controller=>"/intranet"
    end
  end

  def edit
    @usuario = Core::Usuario.find(params[:id])
    #mesma validação
    unless @usuario_logado == @usuario
      flash[:error] = "Acao nao Permitida"
      redirect_to :controller=>"/intranet"
    end
  end

  def update
    @usuario = Core::Usuario.find(params[:id])
    #mesma validação
    unless @usuario_logado == @usuario
      if @usuario.update_attributes(params[:core_usuario])
        flash[:success] = "Atualizado com Sucesso"
        redirect_to core_perfil_path(@usuario)
      else
        flash[:error] = "Erro ao Atualizar"
        render :action=> :edit, :id=>@usuario
      end
    end
  end


end
