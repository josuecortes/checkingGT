class Transportadora::EmbarquesController < ApplicationController
  def index

    @transportadora_embarques = Aquaviario::Embarque.joins("INNER JOIN AQUAVIARIO_DOCUMENTOS ON AQUAVIARIO_DOCUMENTOS.EMBARQUE_ID = AQUAVIARIO_EMBARQUES.ID").paginate(:page => params[:page], :per_page => 30).where("AQUAVIARIO_DOCUMENTOS.TRANSPORTADORA_DESTINO_ID = #{@usuario_logado.transportadora_id} AND AQUAVIARIO_EMBARQUES.SITUACAO <> 'xxxx' AND AQUAVIARIO_EMBARQUES.TRANSPORTADORA_ID <> #{@usuario_logado.transportadora_id}").uniq

  end

  def show
    @embarque = Aquaviario::Embarque.find(params[:id])
    respond_to do |format|
      format.html { render :layout => "print"}
    end
    #@transportadora_embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
  end

end
