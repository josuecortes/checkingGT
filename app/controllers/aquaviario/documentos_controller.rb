class Aquaviario::DocumentosController < ApplicationController

  def index
    @embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:embarque_id])
    @novo_documento = Aquaviario::Documento.new
  end

  def create
    @embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:embarque_id])
    @novo_documento = Aquaviario::Documento.new(params[:aquaviario_documento])
    if @novo_documento.transportadora_destino_id == " " or @novo_documento.transportadora_destino_id == nil
      @novo_documento.transportadora_destino_id = @usuario_logado.transportadora.id
    end

    if @novo_documento.save
      flash[:success] = "Salva com Successo"
      redirect_to aquaviario_embarque_documentos_path(@embarque)
   else
      flash[:error] = "Erro ao Salvar"
      render action: "index"
   end
  end

  def destroy
    @embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:embarque_id])
    @novo_documento = Aquaviario::Documento.find(params[:id])

    if @novo_documento.destroy
      flash[:success] = "Apagado com Successo"
      redirect_to aquaviario_embarque_documentos_path(@embarque)
   else
      flash[:error] = "Erro ao Apagar"
      render action: "index"
   end
  end
end
