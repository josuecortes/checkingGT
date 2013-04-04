class Core::NegativacaoTiposController < ApplicationController

  def index
    @core_negativacao_tipos = Core::NegativacaoTipo.all

  end

  def show
    @core_negativacao_tipo = Core::NegativacaoTipo.find(params[:id])

  end

  def new
    @core_negativacao_tipo = Core::NegativacaoTipo.new

  end

  def edit
    @core_negativacao_tipo = Core::NegativacaoTipo.find(params[:id])
  end

  def create
    @core_negativacao_tipo = Core::NegativacaoTipo.new(params[:core_negativacao_tipo])

    if @core_negativacao_tipo.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_negativacao_tipos_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @core_negativacao_tipo = Core::NegativacaoTipo.find(params[:id])

    if @core_negativacao_tipo.update_attributes(params[:core_negativacao_tipo])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_negativacao_tipos_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @core_negativacao_tipo = Core::NegativacaoTipo.find(params[:id])
    @core_negativacao_tipo.destroy

    flash[:success] = "Apagado com Successo"

    respond_to do |format|
      format.html { redirect_to core_negativacao_tipos_url }
      format.json { head :no_content }
    end
  end
end
