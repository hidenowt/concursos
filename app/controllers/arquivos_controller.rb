class ArquivosController < ApplicationController
  # GET /arquivos
  # GET /arquivos.xml
  def index
    @arquivos = Arquivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @arquivos }
    end
  end

  # GET /arquivos/1
  # GET /arquivos/1.xml
  def show
    @arquivo = Arquivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @arquivo }
    end
  end

  # GET /arquivos/new
  # GET /arquivos/new.xml
  def new
    @arquivo = Arquivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @arquivo }
    end
  end

  # GET /arquivos/1/edit
  def edit
    @arquivo = Arquivo.find(params[:id])
  end

  # POST /arquivos
  # POST /arquivos.xml
  def create
    @arquivo = Arquivo.new(params[:arquivo])

    respond_to do |format|
      if @arquivo.save
        format.html { redirect_to(@arquivo, :notice => 'Arquivo was successfully created.') }
        format.xml  { render :xml => @arquivo, :status => :created, :location => @arquivo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @arquivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /arquivos/1
  # PUT /arquivos/1.xml
  def update
    @arquivo = Arquivo.find(params[:id])

    respond_to do |format|
      if @arquivo.update_attributes(params[:arquivo])
        format.html { redirect_to(@arquivo, :notice => 'Arquivo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @arquivo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /arquivos/1
  # DELETE /arquivos/1.xml
  def destroy
    @arquivo = Arquivo.find(params[:id])
    @arquivo.destroy

    respond_to do |format|
      format.html { redirect_to(arquivos_url) }
      format.xml  { head :ok }
    end
  end
end
