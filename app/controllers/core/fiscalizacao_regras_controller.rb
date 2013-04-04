class Core::FiscalizacaoRegrasController < ApplicationController
  def index
    @core_fiscalizacao_regras = Core::FiscalizacaoRegra.all
  end

  def show
    @core_fiscalizacao_regra = Core::FiscalizacaoRegra.find(params[:id])
  end

  def new
    @core_fiscalizacao_regra = Core::FiscalizacaoRegra.new
  end

  def edit
    @core_fiscalizacao_regra = Core::FiscalizacaoRegra.find(params[:id])
  end

  def create
    @core_fiscalizacao_regra = Core::FiscalizacaoRegra.new(params[:core_fiscalizacao_regra])

    if @core_fiscalizacao_regra.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_fiscalizacao_regras_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @core_fiscalizacao_regra = Core::FiscalizacaoRegra.find(params[:id])

    if @core_fiscalizacao_regra.update_attributes(params[:core_fiscalizacao_regra])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_fiscalizacao_regras_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  # DELETE /core/fiscalizacao_regras/1
  # DELETE /core/fiscalizacao_regras/1.json
  def destroy
    @core_fiscalizacao_regra = Core::FiscalizacaoRegra.find(params[:id])
    @core_fiscalizacao_regra.destroy

    flash[:success] = "Apagado com Successo"

    respond_to do |format|
      format.html { redirect_to core_fiscalizacao_regras_url }
      format.json { head :no_content }
    end
  end
end
