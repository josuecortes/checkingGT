class Core::ModulosController < ApplicationController
  # GET /core/modulos
  # GET /core/modulos.json
  def index
    @core_modulos = Core::Modulo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_modulos }
    end
  end

  # GET /core/modulos/1
  # GET /core/modulos/1.json
  def show
    @core_modulo = Core::Modulo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_modulo }
    end
  end

  # GET /core/modulos/new
  # GET /core/modulos/new.json
  def new
    @core_modulo = Core::Modulo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_modulo }
    end
  end

  # GET /core/modulos/1/edit
  def edit
    @core_modulo = Core::Modulo.find(params[:id])
  end

  # POST /core/modulos
  # POST /core/modulos.json
  def create
    @core_modulo = Core::Modulo.new(params[:core_modulo])

    respond_to do |format|
      if @core_modulo.save
        format.html { redirect_to @core_modulo, notice: 'Modulo was successfully created.' }
        format.json { render json: @core_modulo, status: :created, location: @core_modulo }
      else
        format.html { render action: "new" }
        format.json { render json: @core_modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/modulos/1
  # PUT /core/modulos/1.json
  def update
    @core_modulo = Core::Modulo.find(params[:id])

    respond_to do |format|
      if @core_modulo.update_attributes(params[:core_modulo])
        format.html { redirect_to @core_modulo, notice: 'Modulo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/modulos/1
  # DELETE /core/modulos/1.json
  def destroy
    @core_modulo = Core::Modulo.find(params[:id])
    @core_modulo.destroy

    respond_to do |format|
      format.html { redirect_to core_modulos_url }
      format.json { head :no_content }
    end
  end
end
