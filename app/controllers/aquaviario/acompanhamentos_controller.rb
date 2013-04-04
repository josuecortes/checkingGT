class Aquaviario::AcompanhamentosController < ApplicationController

  def index

    sql = "embarque_id = #{params[:embarque_id]} "
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

    @notas = Core::Nota.da_transportadora(@usuario_logado.transportadora_id).paginate(:page => params[:page], :per_page => 30).where(sql)

  end

  def show
    @notas = Core::Nota.da_transportadora(@usuario_logado.transportadora_id).where("embarque_id = #{params[:embarque_id]} and id = #{params[:id]}")

  end  

end
