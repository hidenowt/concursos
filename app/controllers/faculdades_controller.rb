class FaculdadesController < ApplicationController
  # GET /faculdades
  # GET /faculdades.xml
  def index
    @faculdades = Faculdade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @faculdades }
    end
  end

  # GET /faculdades/1
  # GET /faculdades/1.xml
  def show
    @faculdade = Faculdade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @faculdade }
    end
  end

  # GET /faculdades/new
  # GET /faculdades/new.xml
  def new
    @faculdade = Faculdade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @faculdade }
    end
  end

  # GET /faculdades/1/edit
  def edit
    @faculdade = Faculdade.find(params[:id])
  end

  # POST /faculdades
  # POST /faculdades.xml
  def create
    @faculdade = Faculdade.new(params[:faculdade])

    respond_to do |format|
      if @faculdade.save
        format.html { redirect_to(@faculdade, :notice => 'Faculdade was successfully created.') }
        format.xml  { render :xml => @faculdade, :status => :created, :location => @faculdade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @faculdade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /faculdades/1
  # PUT /faculdades/1.xml
  def update
    @faculdade = Faculdade.find(params[:id])

    respond_to do |format|
      if @faculdade.update_attributes(params[:faculdade])
        format.html { redirect_to(@faculdade, :notice => 'Faculdade was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @faculdade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /faculdades/1
  # DELETE /faculdades/1.xml
  def destroy
    @faculdade = Faculdade.find(params[:id])
    @faculdade.destroy

    respond_to do |format|
      format.html { redirect_to(faculdades_url) }
      format.xml  { head :ok }
    end
  end
end
