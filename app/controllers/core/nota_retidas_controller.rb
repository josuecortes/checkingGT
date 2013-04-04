class Core::NotaRetidasController < ApplicationController
  # GET /core/nota_retidas
  # GET /core/nota_retidas.json
  def index
    @core_nota_retidas = Core::NotaRetida.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_nota_retidas }
    end
  end

  # GET /core/nota_retidas/1
  # GET /core/nota_retidas/1.json
  def show
    @core_nota_retida = Core::NotaRetida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_nota_retida }
    end
  end

  # GET /core/nota_retidas/new
  # GET /core/nota_retidas/new.json
  def new
    @core_nota_retida = Core::NotaRetida.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_nota_retida }
    end
  end

  # GET /core/nota_retidas/1/edit
  def edit
    @core_nota_retida = Core::NotaRetida.find(params[:id])
  end

  # POST /core/nota_retidas
  # POST /core/nota_retidas.json
  def create
    @core_nota_retida = Core::NotaRetida.new(params[:core_nota_retida])

    respond_to do |format|
      if @core_nota_retida.save
        format.html { redirect_to @core_nota_retida, notice: 'Nota retida was successfully created.' }
        format.json { render json: @core_nota_retida, status: :created, location: @core_nota_retida }
      else
        format.html { render action: "new" }
        format.json { render json: @core_nota_retida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/nota_retidas/1
  # PUT /core/nota_retidas/1.json
  def update
    @core_nota_retida = Core::NotaRetida.find(params[:id])

    respond_to do |format|
      if @core_nota_retida.update_attributes(params[:core_nota_retida])
        format.html { redirect_to @core_nota_retida, notice: 'Nota retida was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_nota_retida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/nota_retidas/1
  # DELETE /core/nota_retidas/1.json
  def destroy
    @core_nota_retida = Core::NotaRetida.find(params[:id])
    @core_nota_retida.destroy

    respond_to do |format|
      format.html { redirect_to core_nota_retidas_url }
      format.json { head :no_content }
    end
  end
end
