class Core::LiberarNotasController < ApplicationController
  # GET /core/liberar_notas
  # GET /core/liberar_notas.json
  def index
    @core_liberar_notas = Core::LiberarNota.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_liberar_notas }
    end
  end

  # GET /core/liberar_notas/1
  # GET /core/liberar_notas/1.json
  def show
    @core_liberar_nota = Core::LiberarNota.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_liberar_nota }
    end
  end

  # GET /core/liberar_notas/new
  # GET /core/liberar_notas/new.json
  def new
    @core_liberar_nota = Core::LiberarNota.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_liberar_nota }
    end
  end

  # GET /core/liberar_notas/1/edit
  def edit
    @core_liberar_nota = Core::LiberarNota.find(params[:id])
  end

  # POST /core/liberar_notas
  # POST /core/liberar_notas.json
  def create
    @core_liberar_nota = Core::LiberarNota.new(params[:core_liberar_nota])

    respond_to do |format|
      if @core_liberar_nota.save
        format.html { redirect_to @core_liberar_nota, notice: 'Liberar nota was successfully created.' }
        format.json { render json: @core_liberar_nota, status: :created, location: @core_liberar_nota }
      else
        format.html { render action: "new" }
        format.json { render json: @core_liberar_nota.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/liberar_notas/1
  # PUT /core/liberar_notas/1.json
  def update
    @core_liberar_nota = Core::LiberarNota.find(params[:id])

    respond_to do |format|
      if @core_liberar_nota.update_attributes(params[:core_liberar_nota])
        format.html { redirect_to @core_liberar_nota, notice: 'Liberar nota was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_liberar_nota.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/liberar_notas/1
  # DELETE /core/liberar_notas/1.json
  def destroy
    @core_liberar_nota = Core::LiberarNota.find(params[:id])
    @core_liberar_nota.destroy

    respond_to do |format|
      format.html { redirect_to core_liberar_notas_url }
      format.json { head :no_content }
    end
  end
end
