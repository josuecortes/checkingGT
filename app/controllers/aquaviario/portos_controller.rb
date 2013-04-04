class Aquaviario::PortosController < ApplicationController
  def index
    @aquaviario_portos = Aquaviario::Porto.da_transportadora(@usuario_logado.transportadora_id).all
  end

  def show
    @aquaviario_porto = Aquaviario::Porto.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
  end

  def new
    @aquaviario_porto = Aquaviario::Porto.new
  end

  def edit
    @aquaviario_porto = Aquaviario::Porto.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
  end

  def create
    @aquaviario_porto = Aquaviario::Porto.new(params[:aquaviario_porto])
    if @aquaviario_porto.save
      flash[:success] = "Salvo com Sucesso"
      redirect_to aquaviario_portos_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @aquaviario_porto = Aquaviario::Porto.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])

    if @aquaviario_porto.update_attributes(params[:aquaviario_porto])
      flash[:success] = "Atualizado com Successo"
      redirect_to aquaviario_portos_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @aquaviario_porto = Aquaviario::Porto.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
    @aquaviario_porto.destroy

    flash[:success] = "Apagado com Successo"

    respond_to do |format|
      format.html { redirect_to aquaviario_portos_url }
      format.json { head :no_content }
    end
  end
end
