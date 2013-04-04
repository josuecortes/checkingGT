class Transportadora::UsuariosController < ApplicationController
    def index
    @core_usuarios = Core::Usuario.da_transportadora(@usuario_logado.transportadora_id).all

  end

  def show
    @core_usuario = Core::Usuario.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])

  end

  def new
    @core_usuario = Core::Usuario.new

  end

  def edit
    @core_usuario = Core::Usuario.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
  end

  def create
    @core_usuario = Core::Usuario.new(params[:core_usuario])

    if @core_usuario.save
      flash[:success] = "Salvo com Successo"
      redirect_to transportadora_usuarios_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @core_usuario = Core::Usuario.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])

    if @core_usuario.update_attributes(params[:core_usuario])
      flash[:success] = "Atualizado com Successo"
      redirect_to transportadora_usuarios_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @core_usuario = Core::Usuario.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
    if @core_usuario.status == true
      @core_usuario.status = false
    else
      @core_usuario.status = true
    end

    @core_usuario.save

    flash[:success] = "Status Modificado com Successo"

    respond_to do |format|
      format.html { redirect_to core_usuarios_url }
      format.json { head :no_content }
    end
  end

  def resetasenha
    @core_usuario = Core::Usuario.da_transportadora(@usuario_logado.transportadora_id).find(params[:usuario_id])
    if @core_usuario
      @core_usuario.mudarsenha = true
      @core_usuario.senha.senha = "@mudar"
    end

    @core_usuario.save
    @core_usuario.senha.save

    respond_to do |format|
      format.html { redirect_to core_usuarios_url }
      format.json { head :no_content }
    end

  end

end
