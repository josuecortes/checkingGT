class Transportadora::GrupoSistemasController < ApplicationController
  def index
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:grupo_id])
  end

  def show
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:grupo_id])
  end

  def new
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:grupo_id])
    @grupo_sistema = Core::GrupoSistema.new
    sd = @grupo.sistemas.collect {|s| s.id}
    if sd.size > 0
      
      sql = ["core_sistemas.id Not In (?) and core_sistemas.controlador like '%Transportadora::%'", sd]
      
      if @usuario_logado.transportadora.tipo == "Aquaviario"
        sql = ["core_sistemas.id Not In (?) and (core_sistemas.controlador like '%Transportadora::%' or core_sistemas.controlador like '%Aquaviario::%')", sd]
      end
      
      @sf = Core::Sistema.where(sql)
    else
      
      sql = ["core_sistemas.controlador like '%Transportadora::%'"]
      
      if @usuario_logado.transportadora.tipo == "Aquaviario"
        sql = ["(core_sistemas.controlador like '%Transportadora::%' or core_sistemas.controlador like '%Aquaviario::%')", sd]
      end
      
      @sf = Core::Sistema.where(sql)
    end
  end

  def create
    @grupo = Core::Grupo.da_transportadora(@usuario_logado.transportadora_id).find(params[:grupo_id])
    if params[:sistemas]
      params[:sistemas].each {|s| Core::GrupoSistema.create(:sistema_id=>s, :grupo_id=>params[:grupo_id])}
      flash[:success] = "Sistema(s) Adicionado(s) ao Grupo!"
      redirect_to transportadora_grupo_grupo_sistemas_path(@grupo)
    else
      flash[:notice] = "Nada Adicionado"
      render action: "index"
    end


  end

  def destroy
    @grupo_sistema = Core::GrupoSistema.find(params[:id])
    @grupo_sistema.destroy

    flash[:success] = "Sistema Apagado do Grupo"
    redirect_to transportadora_grupo_grupo_sistemas_path(@grupo_sistema.grupo_id)
  end

end
