class CandidatosController < ApplicationController
  # GET /candidatos
  # GET /candidatos.xml
  def index
    @candidatos = Candidato.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @candidatos }
    end
  end

  # GET /candidatos/1
  # GET /candidatos/1.xml
  def show
    @candidato = Candidato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @candidato }
    end
  end

  # GET /candidatos/new
  # GET /candidatos/new.xml
  def new
    @candidato = Candidato.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @candidato }
    end
  end

  # GET /candidatos/1/edit
  def edit
    @candidato = Candidato.find(params[:id])
  end

  # POST /candidatos
  # POST /candidatos.xml
  def create
    @candidato = Candidato.new(params[:candidato])

    respond_to do |format|
      if @candidato.save
        format.html { redirect_to(@candidato, :notice => 'Candidato was successfully created.') }
        format.xml  { render :xml => @candidato, :status => :created, :location => @candidato }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @candidato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /candidatos/1
  # PUT /candidatos/1.xml
  def update
    @candidato = Candidato.find(params[:id])

    respond_to do |format|
      if @candidato.update_attributes(params[:candidato])
        format.html { redirect_to(@candidato, :notice => 'Candidato was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @candidato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /candidatos/1
  # DELETE /candidatos/1.xml
  def destroy
    @candidato = Candidato.find(params[:id])
    @candidato.destroy

    respond_to do |format|
      format.html { redirect_to(candidatos_url) }
      format.xml  { head :ok }
    end
  end
end
