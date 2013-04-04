class Core::PessoaJuridicasController < ApplicationController

  def index
    @core_pessoa_juridica = Core::PessoaJuridica.new params[:core_pessoa_juridica]
    @core_pessoa_juridicas = Core::PessoaJuridica.paginate(:page => params[:page], :per_page => 30).order("razaosocial")
    %w{razaosocial cnpj}.each do |field|
      val = @core_pessoa_juridica.send(field.to_sym)
      @core_pessoa_juridicas = @core_pessoa_juridicas.paginate(:page => params[:page], :per_page => 30).where("#{field} like ?","%" + val + "%") if val && val!=""
    end
  end

  def show
    @core_pessoa_juridica = Core::PessoaJuridica.find(params[:id])
  end

  def new
    @core_pessoa_juridica = Core::PessoaJuridica.new
  end

  def edit
    @core_pessoa_juridica = Core::PessoaJuridica.find(params[:id])
  end

  def create
    @core_pessoa_juridica = Core::PessoaJuridica.new(params[:core_pessoa_juridica])

    if @core_pessoa_juridica.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_pessoa_juridicas_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @core_pessoa_juridica = Core::PessoaJuridica.find(params[:id])

    if @core_pessoa_juridica.update_attributes(params[:core_pessoa_juridica])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_pessoa_juridicas_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @core_pessoa_juridica = Core::PessoaJuridica.find(params[:id])
    @core_pessoa_juridica.destroy

    flash[:success] = "Apagado com Successo"

    respond_to do |format|
      format.html { redirect_to core_pessoa_juridicas_url }
      format.json { head :no_content }
    end
  end
end
