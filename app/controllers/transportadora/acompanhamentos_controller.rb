class Transportadora::AcompanhamentosController < ApplicationController
  def index

    sql = "embarque_id = #{params[:embarque_id]} AND CORE_NOTAS.TRANSPORTADORA_DESTINO_ID = #{@usuario_logado.transportadora_id} AND CORE_NOTAS.TRANSPORTADORA_ID <> #{@usuario_logado.transportadora_id} AND AQUAVIARIO_EMBARQUES.SITUACAO = 'Processado'"
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
    @notas = Core::Nota.joins("INNER JOIN AQUAVIARIO_EMBARQUES ON AQUAVIARIO_EMBARQUES.ID = CORE_NOTAS.EMBARQUE_ID").where("CORE_NOTAS.embarque_id = #{params[:embarque_id]} and CORE_NOTAS.ID = #{params[:id]} AND CORE_NOTAS.TRANSPORTADORA_DESTINO_ID = #{@usuario_logado.transportadora_id} AND CORE_NOTAS.TRANSPORTADORA_ID <> #{@usuario_logado.transportadora_id} AND AQUAVIARIO_EMBARQUES.SITUACAO = 'Processado'")
  end

end
