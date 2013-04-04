class Transportadora::GruposController < ApplicationController
  def index
    @grupos = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).all
  end

  def show
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
  end

  def new
    @grupo = Core::Grupo.new
  end

  def edit
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
  end

  def create
    @grupo = Core::Grupo.new(params[:core_grupo])
    if @grupo.save
      flash[:success] = "Salvo com Sucesso"
      redirect_to transportadora_grupos_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end

  end

  def update
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
    if @grupo.editavel == true
      if @grupo.update_attributes(params[:core_grupo])
        flash[:success] = "Atualizado com Successo"
        redirect_to transportadora_grupos_path
      else
        flash[:error] = "Erro ao Atualizar"
        render action: "edit"
      end
    else
      flash[:error] = "Este Grupo Nao Pode Ser Editado ou Removido"
      redirect_to transportadora_grupos_path
    end
  end

  def destroy
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
    if @grupo.editavel == true
      @grupo.destroy

      flash[:success] = "Apagado com Successo"
      respond_to do |format|
        format.html { redirect_to transportadora_grupos_path }
        format.json { head :no_content }
      end
    else
      flash[:error] = "Este Grupo Nao Pode Ser Editado ou Removido"
      redirect_to transportadora_grupos_path
    end
  end
end
