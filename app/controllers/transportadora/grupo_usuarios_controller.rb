class Transportadora::GrupoUsuariosController < ApplicationController
  def index
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:grupo_id])
  end

  def show
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:grupo_id])
  end

  def new
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:grupo_id])
    @grupo_usuario = Core::UsuarioGrupo.new
    ud = @grupo.usuarios.collect {|u| u.id}
    if ud.size > 0
      @uf = Core::Usuario.da_transportadora(@usuario_logado.transportadora_id).where(["core_usuarios.id Not In (?)", ud])
    else
      @uf = Core::Usuario.da_transportadora(@usuario_logado.transportadora_id).all
    end
  end

  def create
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:grupo_id])
    if params[:usuarios]
      params[:usuarios].each {|u| Core::UsuarioGrupo.create(:usuario_id=>u, :grupo_id=>params[:grupo_id])}
      flash[:success] = "Usuario(s) Adicionado(s) ao Grupo!"
      redirect_to transportadora_grupo_grupo_usuarios_path(@grupo)
    else
      flash[:notice] = "Nada Adicionado"
      render action: "index"
    end

  end

  def destroy
    @grupo_usuario = Core::UsuarioGrupo.find(params[:id])
    @grupo_usuario.destroy

    flash[:success] = "Usuario Apagado do Grupo"
    redirect_to transportadora_grupo_grupo_usuarios_path(@grupo_usuario.grupo_id)
  end

end
