class Core::UnidadeCargasController < ApplicationController

  def index
    @core_unidade_cargas = Core::UnidadeCarga.all

  end

  def show
    @core_unidade_carga = Core::UnidadeCarga.find(params[:id])

  end

  def new
    @core_unidade_carga = Core::UnidadeCarga.new

  end


  def edit
    @core_unidade_carga = Core::UnidadeCarga.find(params[:id])
  end

  def create
    @core_unidade_carga = Core::UnidadeCarga.new(params[:core_unidade_carga])

    if @core_unidade_carga.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_unidade_cargas_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @core_unidade_carga = Core::UnidadeCarga.find(params[:id])

    if @core_unidade_carga.update_attributes(params[:core_unidade_carga])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_unidade_cargas_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @core_unidade_carga = Core::UnidadeCarga.find(params[:id])
    @core_unidade_carga.destroy

    flash[:success] = "Apagado com Successo"

    respond_to do |format|
      format.html { redirect_to core_unidade_cargas_url }
      format.json { head :no_content }
    end
  end
end
