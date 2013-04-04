class Core::TransportadorasController < ApplicationController

  def index
    @core_transportadoras = Core::Transportadora.all

  end

  def show
    @core_transportadora = Core::Transportadora.find(params[:id])

  end

  def new
    @core_transportadora = Core::Transportadora.new

  end

  def edit
    @core_transportadora = Core::Transportadora.find(params[:id])
  end

  def create
    @core_transportadora = Core::Transportadora.new(params[:core_transportadora])

    if @core_transportadora.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_transportadoras_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @core_transportadora = Core::Transportadora.find(params[:id])

    if @core_transportadora.update_attributes(params[:core_transportadora])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_transportadoras_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @core_transportadora = Core::Transportadora.find(params[:id])
    @core_transportadora.destroy

    flash[:success] = "Apagado com Successo"

    respond_to do |format|
      format.html { redirect_to core_transportadoras_url }
      format.json { head :no_content }
    end
  end
end
