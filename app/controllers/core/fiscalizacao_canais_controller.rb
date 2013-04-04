class Core::FiscalizacaoCanaisController < ApplicationController
  
  def index
    @core_fiscalizacao_canais = Core::FiscalizacaoCanal.all

    
  end
  
  def show
    @core_fiscalizacao_canal = Core::FiscalizacaoCanal.find(params[:id])

  end

  def new
    @core_fiscalizacao_canal = Core::FiscalizacaoCanal.new
  
  end

  def edit
    @core_fiscalizacao_canal = Core::FiscalizacaoCanal.find(params[:id])
  end

  def create
    @core_fiscalizacao_canal = Core::FiscalizacaoCanal.new(params[:core_fiscalizacao_canal])

    if @core_fiscalizacao_canal.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_fiscalizacao_canais_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @core_fiscalizacao_canal = Core::FiscalizacaoCanal.find(params[:id])

    if @core_fiscalizacao_canal.update_attributes(params[:core_fiscalizacao_canal])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_fiscalizacao_canais_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @core_fiscalizacao_canal = Core::FiscalizacaoCanal.find(params[:id])
    @core_fiscalizacao_canal.destroy

    respond_to do |format|
      format.html { redirect_to core_fiscalizacao_canais_url }
      format.json { head :no_content }
    end
  end
end
