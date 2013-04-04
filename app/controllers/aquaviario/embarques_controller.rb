class Aquaviario::EmbarquesController < ApplicationController
  
  def index

     sql = "situacao = 'Aberto'"
     if params[:situacao] != "" and params[:situacao] != nil
      sql = "SITUACAO = '#{params[:situacao]}' "
     end
     
     if params[:situacao] == "Todos"
      sql = "SITUACAO <> 'Todos' "
     end
      
    embarques = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).all
    @abertos = 0
    @fechados = 0
    @processando = 0
    @processados = 0
    @finalizados = 0
    embarques.each do |emb|
      if emb.situacao == "Aberto"
        @abertos += 1
      end
      if emb.situacao == "Fechado"
        @fechados += 1
      end
      if emb.situacao == "Processando"
        @processando += 1
      end
      if emb.situacao == "Processado"
        @processados += 1
      end
      if emb.situacao == "Finalizado"
        @finalizados += 1
      end
    end

    @aquaviario_embarques = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).paginate(:page => params[:page], :per_page => 30).where(sql)
    @aquaviario_portos =  Aquaviario::Porto.da_transportadora(@usuario_logado.transportadora_id).all

  end

  def show
    @aquaviario_embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
  end

  def new
    @aquaviario_embarque = Aquaviario::Embarque.new
  end

  # GET /transportadora/embarques/1/edit
  def edit
    @aquaviario_embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
  end

  def create
    @aquaviario_embarque = Aquaviario::Embarque.new(params[:aquaviario_embarque])

    if @aquaviario_embarque.save
      flash[:success] = "Salvo com Successo"
      redirect_to aquaviario_embarques_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @aquaviario_embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])

    if @aquaviario_embarque.update_attributes(params[:aquaviario_embarque])

      if @aquaviario_embarque.situacao == "Finalizado"
        flash[:success] = "Atualizado com Successo"
        redirect_to aquaviario_embarques_path
      else
        flash[:success] = "Atualizado com Successo"
        redirect_to aquaviario_embarques_path
      end

    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @aquaviario_embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:id])
    @aquaviario_embarque.destroy

    flash[:success] = "Apagado com Successo"

    respond_to do |format|
      format.html { redirect_to aquaviario_embarques_url }
      format.json { head :no_content }
    end
  end
  
  
  
  def manifesto
    @embarque = Aquaviario::Embarque.da_transportadora(@usuario_logado.transportadora_id).find(params[:embarque_id])
    
    respond_to do |format|
      format.html { render :layout => "print"}
    end
   
  end
  
  
end
