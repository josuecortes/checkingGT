class Core::NpfsController < ApplicationController
  def index
    @pessoas = Core::PessoaFisica.all
  end

  def edit
    @pessoa = Core::PessoaFisica.find(params[:id])
    @negativacao = Core::Npf.new
  end

  def create
    @negativacao = Core::Npf.new(params[:core_npf])
    @pessoa = Core::PessoaFisica.find(@negativacao.pessoa_fisica_id)
    
    if @negativacao.save
      flash[:success] = "Salvo com Successo"
      redirect_to edit_core_npf_path(@negativacao.pessoa_fisica_id)
    else
      flash[:error] = "Erro ao Salvar"
      render action: "edit", error: 'Erro ao Salvar'
    end
  end

  def destroy
    @negativacao = Core::Npf.find(params[:id])
    @pessoa = Core::PessoaFisica.find(@negativacao.pessoa_fisica_id)
        
    if @negativacao.destroy
      flash[:success] = "Apagado com Successo"
      redirect_to edit_core_npf_path(@negativacao.pessoa_fisica_id)
    else
      flash[:error] = "Erro ao Apagar"
      render action: "edit", error: 'Erro ao Salvar'  
    end
  end
end
