class Core::GruposController < ApplicationController
  def index
    @grupos = Core::Grupo.order(:transportadora_id)
  end

  def show
    @grupo = Core::Grupo.find(params[:id])
  end

  def new
    @grupo = Core::Grupo.new
  end

  def edit
    @grupo = Core::Grupo.find(params[:id])
  end

  def create
    @grupo = Core::Grupo.new(params[:core_grupo])
    if @grupo.save
      flash[:success] = "Salvo com Sucesso"
      redirect_to core_grupos_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end

  end

  def update
    @grupo = Core::Grupo.find(params[:id])

    if @grupo.update_attributes(params[:core_grupo])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_grupos_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @grupo = Core::Grupo.find(params[:id])

    @grupo.destroy

    flash[:success] = "Apagado com Successo"
    respond_to do |format|
      format.html { redirect_to core_grupos_path }
      format.json { head :no_content }
    end
  end
end
