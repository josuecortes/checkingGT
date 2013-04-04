class Core::NotaLiberadasController < ApplicationController
  # GET /core/nota_liberadas
  # GET /core/nota_liberadas.json
  def index
    @core_nota_liberadas = Core::NotaLiberada.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_nota_liberadas }
    end
  end

  # GET /core/nota_liberadas/1
  # GET /core/nota_liberadas/1.json
  def show
    @core_nota_liberada = Core::NotaLiberada.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_nota_liberada }
    end
  end

  # GET /core/nota_liberadas/new
  # GET /core/nota_liberadas/new.json
  def new
    @core_nota_liberada = Core::NotaLiberada.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_nota_liberada }
    end
  end

  # GET /core/nota_liberadas/1/edit
  def edit
    @core_nota_liberada = Core::NotaLiberada.find(params[:id])
  end

  # POST /core/nota_liberadas
  # POST /core/nota_liberadas.json
  def create
    @core_nota_liberada = Core::NotaLiberada.new(params[:core_nota_liberada])

    respond_to do |format|
      if @core_nota_liberada.save
        format.html { redirect_to @core_nota_liberada, notice: 'Nota liberada was successfully created.' }
        format.json { render json: @core_nota_liberada, status: :created, location: @core_nota_liberada }
      else
        format.html { render action: "new" }
        format.json { render json: @core_nota_liberada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/nota_liberadas/1
  # PUT /core/nota_liberadas/1.json
  def update
    @core_nota_liberada = Core::NotaLiberada.find(params[:id])

    respond_to do |format|
      if @core_nota_liberada.update_attributes(params[:core_nota_liberada])
        format.html { redirect_to @core_nota_liberada, notice: 'Nota liberada was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_nota_liberada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/nota_liberadas/1
  # DELETE /core/nota_liberadas/1.json
  def destroy
    @core_nota_liberada = Core::NotaLiberada.find(params[:id])
    @core_nota_liberada.destroy

    respond_to do |format|
      format.html { redirect_to core_nota_liberadas_url }
      format.json { head :no_content }
    end
  end
end
