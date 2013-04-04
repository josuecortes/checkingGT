class Transportadora::EstoquesController < ApplicationController

  def index

    sql = "CORE_NOTAS.TRANSPORTADORA_DESTINO_ID = #{@usuario_logado.transportadora_id} AND AQUAVIARIO_EMBARQUES.SITUACAO = 'Finalizado' "
    if params[:situacao] != "" and params[:situacao] != nil
      sql = sql + " and CORE_NOTAS.SITUACAO = '#{params[:situacao]}' "
    end
    if params[:numero] != "" and params[:numero] != nil
      sql = sql + " and CORE_NOTAS.NUMERO_NOTA = '#{params[:numero]}' "
    end
    if params[:emissor] != "" and params[:emissor] != nil
      sql = sql + " and CORE_NOTAS.CNPJ_ORIGEM = '#{params[:emissor]}' "
    end
    if params[:destinatario] != "" and params[:destinatario] != nil
      sql = sql + " and CORE_NOTAS.CNPJ_DESTINO = '#{params[:destinatario]}' OR CORE_NOTAS.CPF_DESTINO = '#{params[:destinatario]}' "
    end

    @notas = Core::Nota.joins("INNER JOIN AQUAVIARIO_EMBARQUES ON AQUAVIARIO_EMBARQUES.ID = CORE_NOTAS.EMBARQUE_ID").paginate(:page => params[:page], :per_page => 30).where(sql)

  end

  def show
    @notas = Core::Nota.joins("INNER JOIN AQUAVIARIO_EMBARQUES ON AQUAVIARIO_EMBARQUES.ID = CORE_NOTAS.EMBARQUE_ID").where("CORE_NOTAS.TRANSPORTADORA_DESTINO_ID = #{@usuario_logado.transportadora_id} and CORE_NOTAS.ID = #{params[:id]} AND AQUAVIARIO_EMBARQUES.SITUACAO = 'Finalizado'")
    
    respond_to do |format|
      format.html { render :layout => "print"}
    end
  end

  def edit
    @nota = Core::Nota.find(params[:id])
       
    if @nota.situacao == 'Liberada'
      @passe = Transportadora::FiscalPasse.new
      @passe.usuario_id = @usuario_logado.id
      @passe.nota_id = @nota.id
      @passe.numero_nota = @nota.numero_nota
      @passe.danfe = @nota.codigo
      @passe.emissor = 'cnpj_emissor'
      if @nota.cnpj_destino != nil
        @passe.destinatario = @nota.cnpj_destino
      else
        @passe.destinatario = @nota.cpf_destino
      end
      @passe.endereco = @nota.endereco_destino
      @passe.datahora_emissao = @nota.created_at
            
      if @passe.save
        flash[:success] = "Passe Fiscal Emitido com Successo"
        @nota.situacao = 'Finalizada'
        @nota.save
        respond_to do |format|
          format.html { render :layout => "print"}
        end
      else
        flash[:error] = "Erro ao Emitir Passe Fiscal"
        redirect_to transportadora_embarques_path
      end
    else 
    
      respond_to do |format|
        format.html { render :layout => "print"}
      end
    
    end
    
  end

end
