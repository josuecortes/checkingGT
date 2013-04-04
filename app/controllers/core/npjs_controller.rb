class Core::NpjsController < ApplicationController
  def index
    @pessoas = Core::PessoaJuridica.all
  end

  def edit
    @pessoa = Core::PessoaJuridica.find(params[:id])
    @negativacao = Core::Npj.new
  end

  def create
    @negativacao = Core::Npj.new(params[:core_npj])
    @pessoa = Core::PessoaJuridica.find(@negativacao.pessoa_juridica_id)
    
    if @negativacao.save
      flash[:success] = "Salvo com Successo"
      redirect_to edit_core_npj_path(@negativacao.pessoa_juridica_id)
    else
      flash[:error] = "Erro ao Salvar"
      render action: "edit", error: 'Erro ao Salvar'
    end
  end

  def destroy
    @negativacao = Core::Npj.find(params[:id])
    @pessoa = Core::PessoaJuridica.find(@negativacao.pessoa_juridica_id)
        
    if @negativacao.destroy
      flash[:success] = "Apagado com Successo"
      redirect_to edit_core_npj_path(@negativacao.pessoa_juridica_id)
    else
      flash[:error] = "Erro ao Apagar"
      render action: "edit", error: 'Erro ao Salvar'  
    end
  end
end
