class Core::GrupoSistemasController < ApplicationController
  def index
    @grupo = Core::Grupo.find(params[:grupo_id])
  end

  def show
    @grupo = Core::Grupo.find(params[:grupo_id])
  end

  def new
    @grupo = Core::Grupo.find(params[:grupo_id])
    @grupo_sistema = Core::GrupoSistema.new
    sd = Core::GrupoSistema.where(:grupo_id => @grupo).collect {|s| s.sistema_id}
    if sd.size > 0
      @sf = Core::Sistema.where(["id Not In (?)", sd])
    else
      @sf = Core::Sistema.all
    end
  end

  def create
    @grupo = Core::Grupo.find(params[:grupo_id])
    if params[:sistemas]
      params[:sistemas].each {|s| Core::GrupoSistema.create(:sistema_id=>s, :grupo_id=>params[:grupo_id])}
      flash[:success] = "Sistema(s) Adicionado(s) ao Grupo!"
      redirect_to core_grupo_grupo_sistemas_path(@grupo)
    else
      flash[:notice] = "Nada Adicionado"
      render action: "index"
    end


  end

  def destroy
    @grupo_sistema = Core::GrupoSistema.find(params[:id])
    @grupo_sistema.destroy

    flash[:success] = "Sistema Apagado do Grupo"
    redirect_to core_grupo_grupo_sistemas_path(@grupo_sistema.grupo_id)
  end

end
