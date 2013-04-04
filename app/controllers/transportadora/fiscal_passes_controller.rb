class Transportadora::FiscalPassesController < ApplicationController
  # GET /transportadora/fiscal_passes
  # GET /transportadora/fiscal_passes.json
  def index
    @transportadora_fiscal_passes = Transportadora::FiscalPasse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transportadora_fiscal_passes }
    end
  end

  # GET /transportadora/fiscal_passes/1
  # GET /transportadora/fiscal_passes/1.json
  def show
    @transportadora_fiscal_pass = Transportadora::FiscalPasse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transportadora_fiscal_pass }
    end
  end

  # GET /transportadora/fiscal_passes/new
  # GET /transportadora/fiscal_passes/new.json
  def new
    @transportadora_fiscal_pass = Transportadora::FiscalPasse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transportadora_fiscal_pass }
    end
  end

  # GET /transportadora/fiscal_passes/1/edit
  def edit
    @transportadora_fiscal_pass = Transportadora::FiscalPasse.find(params[:id])
  end

  # POST /transportadora/fiscal_passes
  # POST /transportadora/fiscal_passes.json
  def create
    @transportadora_fiscal_pass = Transportadora::FiscalPasse.new(params[:transportadora_fiscal_pass])

    respond_to do |format|
      if @transportadora_fiscal_pass.save
        format.html { redirect_to @transportadora_fiscal_pass, notice: 'Fiscal passe was successfully created.' }
        format.json { render json: @transportadora_fiscal_pass, status: :created, location: @transportadora_fiscal_pass }
      else
        format.html { render action: "new" }
        format.json { render json: @transportadora_fiscal_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transportadora/fiscal_passes/1
  # PUT /transportadora/fiscal_passes/1.json
  def update
    @transportadora_fiscal_pass = Transportadora::FiscalPasse.find(params[:id])

    respond_to do |format|
      if @transportadora_fiscal_pass.update_attributes(params[:transportadora_fiscal_pass])
        format.html { redirect_to @transportadora_fiscal_pass, notice: 'Fiscal passe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transportadora_fiscal_pass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportadora/fiscal_passes/1
  # DELETE /transportadora/fiscal_passes/1.json
  def destroy
    @transportadora_fiscal_pass = Transportadora::FiscalPasse.find(params[:id])
    @transportadora_fiscal_pass.destroy

    respond_to do |format|
      format.html { redirect_to transportadora_fiscal_passes_url }
      format.json { head :no_content }
    end
  end
end
