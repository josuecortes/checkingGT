class Core::PessoaFisicasController < ApplicationController

  def index
    @core_pessoa_fisica = Core::PessoaFisica.new params[:core_pessoa_fisica]
    @core_pessoa_fisicas = Core::PessoaFisica.paginate(:page => params[:page], :per_page => 30).order("nome")
    %w{nome cpf}.each do |field|
      val = @core_pessoa_fisica.send(field.to_sym)
      @core_pessoa_fisicas = @core_pessoa_fisicas.paginate(:page => params[:page], :per_page => 30).where("#{field} like ?","%" + val + "%") if val && val!=""
    end
  end

  def show
    @core_pessoa_fisica = Core::PessoaFisica.find(params[:id])

  end

  def new
    @core_pessoa_fisica = Core::PessoaFisica.new

  end

  def edit
    @core_pessoa_fisica = Core::PessoaFisica.find(params[:id])
  end

  def create
    @core_pessoa_fisica = Core::PessoaFisica.new(params[:core_pessoa_fisica])

    if @core_pessoa_fisica.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_pessoa_fisicas_path
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
  end

  def update
    @core_pessoa_fisica = Core::PessoaFisica.find(params[:id])

    if @core_pessoa_fisica.update_attributes(params[:core_pessoa_fisica])
      flash[:success] = "Atualizado com Successo"
      redirect_to core_pessoa_fisicas_path
    else
      flash[:error] = "Erro ao Atualizar"
      render action: "edit"
    end
  end

  def destroy
    @core_pessoa_fisica = Core::PessoaFisica.find(params[:id])
    @core_pessoa_fisica.destroy

    flash[:success] = "Apagado com Successo"

    respond_to do |format|
      format.html { redirect_to core_pessoa_fisicas_url }
      format.json { head :no_content }
    end
  end
end
