class RelacionamentosController < ApplicationController
  # GET /relacionamentos
  # GET /relacionamentos.xml
  def index
    @relacionamentos = Relacionamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @relacionamentos }
    end
  end

  # GET /relacionamentos/1
  # GET /relacionamentos/1.xml
  def show
    @relacionamento = Relacionamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @relacionamento }
    end
  end

  # GET /relacionamentos/new
  # GET /relacionamentos/new.xml
  def new
    @relacionamento = Relacionamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @relacionamento }
    end
  end

  # GET /relacionamentos/1/edit
  def edit
    @relacionamento = Relacionamento.find(params[:id])
  end

  # POST /relacionamentos
  # POST /relacionamentos.xml
  def create
    @relacionamento = Relacionamento.new(params[:relacionamento])

    respond_to do |format|
      if @relacionamento.save
        format.html { redirect_to(@relacionamento, :notice => 'Relacionamento was successfully created.') }
        format.xml  { render :xml => @relacionamento, :status => :created, :location => @relacionamento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @relacionamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /relacionamentos/1
  # PUT /relacionamentos/1.xml
  def update
    @relacionamento = Relacionamento.find(params[:id])

    respond_to do |format|
      if @relacionamento.update_attributes(params[:relacionamento])
        format.html { redirect_to(@relacionamento, :notice => 'Relacionamento was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @relacionamento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /relacionamentos/1
  # DELETE /relacionamentos/1.xml
  def destroy
    @relacionamento = Relacionamento.find(params[:id])
    @relacionamento.destroy

    respond_to do |format|
      format.html { redirect_to(relacionamentos_url) }
      format.xml  { head :ok }
    end
  end
end
