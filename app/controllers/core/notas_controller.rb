class Core::NotasController < ApplicationController
  # GET /core/notas
  # GET /core/notas.json
  def index
    @core_notas = Core::Nota.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_notas }
    end
  end

  # GET /core/notas/1
  # GET /core/notas/1.json
  def show
    @core_nota = Core::Nota.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_nota }
    end
  end

  # GET /core/notas/new
  # GET /core/notas/new.json
  def new
    @core_nota = Core::Nota.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_nota }
    end
  end

  # GET /core/notas/1/edit
  def edit
    @core_nota = Core::Nota.find(params[:id])
  end

  # POST /core/notas
  # POST /core/notas.json
  def create
    @core_nota = Core::Nota.new(params[:core_nota])

    respond_to do |format|
      if @core_nota.save
        format.html { redirect_to @core_nota, notice: 'Nota was successfully created.' }
        format.json { render json: @core_nota, status: :created, location: @core_nota }
      else
        format.html { render action: "new" }
        format.json { render json: @core_nota.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/notas/1
  # PUT /core/notas/1.json
  def update
    @core_nota = Core::Nota.find(params[:id])

    respond_to do |format|
      if @core_nota.update_attributes(params[:core_nota])
        format.html { redirect_to @core_nota, notice: 'Nota was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_nota.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/notas/1
  # DELETE /core/notas/1.json
  def destroy
    @core_nota = Core::Nota.find(params[:id])
    @core_nota.destroy

    respond_to do |format|
      format.html { redirect_to core_notas_url }
      format.json { head :no_content }
    end
  end
end
