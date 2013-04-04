class Core::SistemasController < ApplicationController
  # GET /core/sistemas
  # GET /core/sistemas.json
  def index
    @core_sistemas = Core::Sistema.where(modulo_id: params[:modulo_id])
    @core_modulo = Core::Modulo.find(params[:modulo_id])
  end

  # GET /core/sistemas/1
  # GET /core/sistemas/1.json


  # GET /core/sistemas/new
  # GET /core/sistemas/new.json
  def new
    @core_modulo = Core::Modulo.find(params[:modulo_id])
    @core_sistema = Core::Sistema.new
  end

  # GET /core/sistemas/1/edit
  def edit
    @core_sistema = Core::Sistema.find(params[:id])
    @core_modulo = Core::Modulo.find(params[:modulo_id])
  end

  # POST /core/sistemas
  # POST /core/sistemas.json
  def create
    @core_sistema = Core::Sistema.new(params[:core_sistema])
    @core_modulo = Core::Modulo.find(params[:modulo_id])

    if @core_sistema.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_modulo_sistemas_path(@core_modulo)
    else
      flash[:error] = "Erro ao Salvar"
      render action: :new
    end
  end

  # PUT /core/sistemas/1
  # PUT /core/sistemas/1.json
  def update
    @core_sistema = Core::Sistema.find(params[:id])
    @core_modulo = Core::Modulo.find(params[:modulo_id])

    if @core_sistema.update_attributes(params[:core_sistema])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_modulo_sistemas_path(@core_modulo)
    else
      flash[:error] = "Erro ao Atualizar"
      render action: :edit_core_modulo_sistema_path
    end
  end

  # DELETE /core/sistemas/1
  # DELETE /core/sistemas/1.json
  def destroy
    @core_sistema = Core::Sistema.find(params[:id])
    @core_sistema.destroy
    flash[:success] = "Apagado com Successo"
    redirect_to core_modulo_sistemas_path(@core_sistema.modulo_id)

  end
end
